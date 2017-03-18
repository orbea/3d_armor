local use_moreores = minetest.get_modpath("moreores")

if minetest.global_exists("armor") and armor.elements then
	table.insert(armor.elements, "shield")
end

-- Regisiter Shields

minetest.register_tool("shields:shield_admin", {
	description = "Admin Shield",
	inventory_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=1000, armor_heal=100, armor_use=0, not_in_creative_inventory=1},
	wear = 0,
})

if armor.materials.wood then
	minetest.register_tool("shields:shield_wood", {
		description = "Wooden Shield",
		inventory_image = "shields_inv_shield_wood.png",
		groups = {armor_shield=5, armor_heal=0, armor_use=2000},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_wood", {
		description = "Enhanced Wood Shield",
		inventory_image = "shields_inv_shield_enhanced_wood.png",
		groups = {armor_shield=8, armor_heal=0, armor_use=1000},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_wood",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_wood"},
			{"default:steel_ingot"},
		},
	})
end

if armor.materials.cactus then
	minetest.register_tool("shields:shield_cactus", {
		description = "Cactus Shield",
		inventory_image = "shields_inv_shield_cactus.png",
		groups = {armor_shield=5, armor_heal=0, armor_use=2000},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_cactus", {
		description = "Enhanced Cactus Shield",
		inventory_image = "shields_inv_shield_enhanced_cactus.png",
		groups = {armor_shield=8, armor_heal=0, armor_use=1000},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_cactus",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_cactus"},
			{"default:steel_ingot"},
		},
	})
end

if armor.materials.steel then
	minetest.register_tool("shields:shield_steel", {
		description = "Steel Shield",
		inventory_image = "shields_inv_shield_steel.png",
		groups = {armor_shield=10, armor_heal=0, armor_use=500},
		wear = 0,
	})
end

if armor.materials.bronze then
	minetest.register_tool("shields:shield_bronze", {
		description = "Bronze Shield",
		inventory_image = "shields_inv_shield_bronze.png",
		groups = {armor_shield=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

if armor.materials.diamond then
	minetest.register_tool("shields:shield_diamond", {
		description = "Diamond Shield",
		inventory_image = "shields_inv_shield_diamond.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=100},
		wear = 0,
	})
end

if armor.materials.gold then
	minetest.register_tool("shields:shield_gold", {
		description = "Gold Shield",
		inventory_image = "shields_inv_shield_gold.png",
		groups = {armor_shield=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

if armor.materials.mithril then
	minetest.register_tool("shields:shield_mithril", {
		description = "Mithril Shield",
		inventory_image = "shields_inv_shield_mithril.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

if armor.materials.crystal then
	minetest.register_tool("shields:shield_crystal", {
		description = "Crystal Shield",
		inventory_image = "shields_inv_shield_crystal.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50, armor_fire=1},
		wear = 0,
	})
end

for k, v in pairs(armor.materials) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end
