local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(segmentIndex)
	return {
		segmentIndex = segmentIndex,
	}
end)