--!strict
--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
local types = require(script.Parent.types)

type Callback<T> = types.Callback<T>
type Subscription = types.Subscription
type Signal<T> = types.Signal<T>
type FireSignal<T> = types.FireSignal<T>

type InternalSubscription<T> = { callback: Callback<T>, unsubscribed: boolean }

local function createSignal<T>(): (Signal<T>, FireSignal<T>)
	local subscriptions: { [Callback<T>]: InternalSubscription<T> } = {}
	local suspendedSubscriptions = {}

	local firing = false

	local function subscribe(_self: Signal<T>, callback)
		local subscription = {
			callback = callback,
			unsubscribed = false,
		}

		-- If the callback is already registered, don't add to the
		-- suspendedConnection. Otherwise, this will disable the existing one.
		if firing and not subscriptions[callback] then
			suspendedSubscriptions[callback] = subscription
		else
			subscriptions[callback] = subscription
		end

		local function unsubscribe(_self: Subscription)
			subscription.unsubscribed = true
			subscriptions[callback] = nil
			suspendedSubscriptions[callback] = nil
		end

		return {
			unsubscribe = unsubscribe,
		}
	end

	local function fire(value: T)
		firing = true
		for callback, subscription in subscriptions do
			if not subscription.unsubscribed and not suspendedSubscriptions[callback] then
				callback(value)
			end
		end

		firing = false
		for callback, subscription in suspendedSubscriptions do
			subscriptions[callback] = subscription
		end
		table.clear(suspendedSubscriptions)
	end

	return {
		subscribe = subscribe,
	}, fire
end

return createSignal
