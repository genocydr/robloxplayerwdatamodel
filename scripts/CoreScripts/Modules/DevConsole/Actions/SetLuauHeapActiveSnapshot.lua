--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(snapshotNum: number)
	return {
		active = snapshotNum,
	}
end)
