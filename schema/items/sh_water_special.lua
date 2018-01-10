ITEM.name = "Special Water"
ITEM.description = "A blue can of plain water."
ITEM.model = "models/props_junk/popcan01a.mdl"
ITEM.healthRestore = 20
ITEM.restore = 100
ITEM.category = "consumables"
ITEM.skin = 1
ITEM.functions.Drink = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	OnRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:SetLocalVar("stm", math.min(item.player:GetLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"