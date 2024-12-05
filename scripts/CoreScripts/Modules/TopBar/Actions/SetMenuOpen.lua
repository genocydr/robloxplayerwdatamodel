local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(menuOpen)
	return {
		menuOpen = menuOpen,
	}
end)
