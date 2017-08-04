-- This file is automatically generated, do not edit!
-- Path of Building
--
-- Other active skills
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["Melee"] = {
	name = "Default Attack",
	hidden = true,
	color = 4,
	description = "Strike your foes down with a powerful blow.",
	skillTypes = { [1] = true, [48] = true, [6] = true, [3] = true, [25] = true, [28] = true, [24] = true, },
	baseFlags = {
		attack = true,
		melee = true,
		projectile = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"skill_can_fire_arrows" = 1
		--"skill_can_fire_wand_projectiles" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 1, },
	},
}
skills["GemDetonateMines"] = {
	name = "Detonate Mines",
	gemTags = {
		low_max_level = true,
		active_skill = true,
		spell = true,
	},
	gemTagString = "Spell",
	gemStr = 33,
	gemDex = 33,
	gemInt = 34,
	color = 4,
	description = "Detonates all the Remote Mines you have placed.",
	skillTypes = { [2] = true, [17] = true, [18] = true, [36] = true, },
	baseFlags = {
		spell = true,
	},
	baseMods = {
		skill("castTime", 0.2), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 5, ModFlag.Cast), --"base_cast_speed_+%" = 5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 8, },
		[2] = { 8, },
		[3] = { 8, },
		[4] = { 8, },
		[5] = { 8, },
		[6] = { 8, },
		[7] = { 8, },
		[8] = { 8, },
		[9] = { 8, },
		[10] = { 8, },
	},
}
skills["Portal"] = {
	name = "Portal",
	gemTags = {
		low_max_level = true,
		active_skill = true,
		spell = true,
	},
	gemTagString = "Spell",
	gemStr = 33,
	gemDex = 33,
	gemInt = 34,
	color = 4,
	description = "Creates a portal to the current area's town.",
	skillTypes = { [2] = true, [17] = true, [18] = true, [19] = true, [36] = true, [27] = true, },
	baseFlags = {
		spell = true,
	},
	baseMods = {
		skill("castTime", 2.5), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 3, ModFlag.Cast), --"base_cast_speed_+%" = 3
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 10, },
		[2] = { 10, },
		[3] = { 10, },
		[4] = { 10, },
		[5] = { 10, },
		[6] = { 10, },
		[7] = { 10, },
		[8] = { 10, },
		[9] = { 10, },
		[10] = { 10, },
	},
}
skills["SupportUniqueMjolnerLightningSpellsCastOnHit"] = {
	name = "Mjolner",
	hidden = true,
	color = 4,
	support = true,
	requireSkillTypes = { 45, },
	addSkillTypes = { 42, },
	excludeSkillTypes = { 37, 41, 30, 44, 61, },
	fromItem = true,
	baseMods = {
		skill("cooldown", 0.25), 
		mod("Damage", "INC", 100, ModFlag.Spell, 0, { type = "Condition", var = "SkillIsTriggered" }), --"triggered_spell_spell_damage_+%" = 100
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"unique_mjolner_lightning_spells_triggered" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = nil, 
	},
	levels = {
		[1] = { 0, },
	},
}
skills["SupportUniqueCosprisMaliceColdSpellsCastOnMeleeCriticalStrike"] = {
	name = "Cospri's Malice",
	hidden = true,
	color = 4,
	support = true,
	requireSkillTypes = { 60, },
	addSkillTypes = { },
	excludeSkillTypes = { 37, 41, 30, 44, 61, },
	fromItem = true,
	baseMods = {
		skill("cooldown", 0.25), 
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"unique_cospris_malice_cold_spells_triggered" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = nil, 
	},
	levels = {
		[1] = { 1, },
	},
}
skills["RepeatingShockwave"] = {
	name = "Abberath's Fury",
	hidden = true,
	color = 4,
	description = "While you run, this skill creates a small explosion with each step, dealing fire damage in an area around you.",
	skillTypes = { [11] = true, [36] = true, [42] = true, [2] = true, [10] = true, [61] = true, [33] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("CritChance", 5), 
		skill("FireMin", 50), --"spell_minimum_base_fire_damage" = 50
		skill("FireMax", 75), --"spell_maximum_base_fire_damage" = 75
		mod("EnemyIgniteChance", "BASE", 10), --"base_chance_to_ignite_%" = 10
		--"cast_on_gain_skill" = ?
		--"cannot_knockback" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		--"is_area_damage" = ?
		--"skill_can_add_multiple_charges_per_action" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[7] = { 1, },
	},
}
skills["TriggeredBoneNova"] = {
	name = "Bone Nova",
	hidden = true,
	color = 4,
	description = "A spiral of bones erupts around you, dealing physical damage.",
	skillTypes = { [1] = true, [48] = true, [3] = true, [10] = true, [57] = true, [47] = true, [61] = true, },
	fromItem = true,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 0.5), 
		mod("ProjectileCount", "BASE", 8), --"number_of_additional_projectiles" = 8
		--"attack_trigger_on_killing_bleeding_enemy_%" = 100
		--"monster_projectile_variation" = 15
		--"projectiles_nova" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		--"base_is_projectile" = ?
		flag("CannotBleed"), --"cannot_cause_bleeding" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[20] = { 1, },
	},
}
skills["TriggeredConsecrate"] = {
	name = "Consecrate",
	hidden = true,
	color = 4,
	description = "Creates an area of Consecrated Ground, providing life regeneration for you and allies who stand in it.",
	skillTypes = { [2] = true, [12] = true, [36] = true, [11] = true, [42] = true, [61] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		duration = true,
		area = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 5), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		mod("LifeRegenPercent", "BASE", 6, 0, 0, nil), --"life_regeneration_rate_per_minute_%" = 360
		--"cast_on_crit_%" = 100
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[10] = { 1, },
	},
}
skills["TriggeredSummonLesserShrine"] = {
	name = "Create Lesser Shrine",
	hidden = true,
	color = 4,
	description = "Creates a Lesser Shrine, which will grant a bonus when touched. The Lesser Shrine will disappear after a short duration, or when used. This skill starts on cooldown.",
	skillTypes = { [2] = true, [36] = true, [42] = true, [61] = true, [12] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		duration = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 20), 
		--"chance_to_cast_on_kill_%" = 100
		skill("duration", 10), --"base_skill_effect_duration" = 10000
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 1, },
	},
}
skills["ChaosDegenAuraUnique"] = {
	name = "Death Aura",
	hidden = true,
	color = 4,
	description = "Casts an aura that deals Chaos Damage over Time to nearby Enemies. This skill cannot be cast by Totems.",
	skillTypes = { [2] = true, [5] = true, [11] = true, [40] = true, [44] = true, [64] = true, [50] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		aura = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("ChaosDot", 450), --"base_chaos_damage_to_deal_per_minute" = 27000
		--"cast_on_gain_skill" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		skill("dotIsArea", true), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[20] = { 62, },
	},
}
skills["TouchOfGod"] = {
	name = "Doryani's Touch",
	hidden = true,
	color = 1,
	description = "The character uses their fist to slam the ground in front of them, with less attack speed, but more damage. This attack deals Lightning Damage to enemies in a large area, with a chance to Shock them. Cannot be used while wielding a Weapon. Cannot be supported by Multistrike.",
	skillTypes = { [1] = true, [11] = true, [35] = true, [24] = true, },
	weaponTypes = {
		["None"] = true,
	},
	fromItem = true,
	baseFlags = {
		attack = true,
		area = true,
		melee = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 2.5), 
		mod("SkillPhysicalDamageConvertToLightning", "BASE", 50), --"skill_physical_damage_%_to_convert_to_lightning" = 50
		mod("Speed", "MORE", -30, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -30
		mod("EnemyShockChance", "BASE", 20), --"base_chance_to_shock_%" = 20
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 0.5, ModFlag.Area), --"area_damage_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
	},
	levels = {
		[1] = { 31, 24, },
		[2] = { 34, 24, },
		[3] = { 36, 24, },
		[4] = { 38, 24, },
		[5] = { 40, 24, },
		[6] = { 42, 25, },
		[7] = { 44, 25, },
		[8] = { 46, 25, },
		[9] = { 48, 25, },
		[10] = { 50, 25, },
		[11] = { 52, 26, },
		[12] = { 54, 26, },
		[13] = { 56, 26, },
		[14] = { 58, 26, },
		[15] = { 60, 26, },
		[16] = { 62, 27, },
		[17] = { 64, 27, },
		[18] = { 66, 27, },
		[19] = { 68, 28, },
		[20] = { 70, 28, },
		[21] = { 72, 28, },
		[22] = { 74, 29, },
		[23] = { 76, 29, },
		[24] = { 78, 29, },
		[25] = { 80, 30, },
		[26] = { 82, 30, },
		[27] = { 84, 30, },
		[28] = { 86, 31, },
		[29] = { 88, 31, },
		[30] = { 90, 31, },
	},
}
skills["Envy"] = {
	name = "Envy",
	hidden = true,
	color = 3,
	description = "Casts an aura that adds chaos damage to the attacks and spells of you and your allies.",
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, [50] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		chaos = true,
	},
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 50), 
		skill("cooldown", 1.2), 
		mod("ChaosMin", "BASE", 58, 0, KeywordFlag.Attack, { type = "GlobalEffect", effectType = "Aura" }), --"attack_minimum_added_chaos_damage" = 58
		mod("ChaosMax", "BASE", 81, 0, KeywordFlag.Attack, { type = "GlobalEffect", effectType = "Aura" }), --"attack_maximum_added_chaos_damage" = 81
		mod("AreaOfEffect", "INC", 0), --"base_skill_area_of_effect_+%" = 0
		mod("ChaosMin", "BASE", 52, 0, KeywordFlag.Spell, { type = "GlobalEffect", effectType = "Aura" }), --"spell_minimum_added_chaos_damage" = 52
		mod("ChaosMax", "BASE", 69, 0, KeywordFlag.Spell, { type = "GlobalEffect", effectType = "Aura" }), --"spell_maximum_added_chaos_damage" = 69
		--"base_deal_no_damage" = ?
		skill("radius", 36), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[15] = { 60, },
	},
}
skills["FireBurstOnHit"] = {
	name = "Fire Burst",
	hidden = true,
	color = 4,
	description = "A burst of flame errupts from the location of a hit, dealing fire damage.",
	skillTypes = { [2] = true, [11] = true, [10] = true, [33] = true, [36] = true, [42] = true, [61] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.5), 
		skill("CritChance", 5), 
		skill("cooldown", 0.5), 
		--"cast_on_hit_%" = 10
		--"is_area_damage" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 1, 7, 11, },
		[2] = { 2, 8, 12, },
		[3] = { 4, 10, 16, },
		[4] = { 7, 14, 21, },
		[5] = { 11, 20, 30, },
		[6] = { 16, 30, 46, },
		[7] = { 20, 41, 61, },
		[8] = { 24, 54, 80, },
		[9] = { 28, 70, 104, },
		[10] = { 32, 89, 134, },
		[11] = { 36, 114, 170, },
		[12] = { 40, 143, 215, },
		[13] = { 44, 180, 270, },
		[14] = { 48, 224, 336, },
		[15] = { 52, 278, 418, },
		[16] = { 56, 344, 516, },
		[17] = { 60, 424, 636, },
		[18] = { 64, 520, 780, },
		[19] = { 67, 605, 908, },
		[20] = { 70, 703, 1055, },
		[21] = { 72, 777, 1165, },
		[22] = { 74, 858, 1286, },
		[23] = { 76, 946, 1419, },
		[24] = { 78, 1043, 1564, },
		[25] = { 80, 1149, 1724, },
		[26] = { 82, 1266, 1899, },
		[27] = { 84, 1394, 2091, },
		[28] = { 86, 1534, 2301, },
		[29] = { 88, 1687, 2530, },
		[30] = { 90, 1855, 2782, },
	},
}
skills["VaalAuraElementalDamageHealing"] = {
	name = "Gluttony of Elements",
	hidden = true,
	color = 4,
	description = "Casts an aura that causes taking elemental damage to heal you and nearby allies instead.",
	skillTypes = { [2] = true, [5] = true, [11] = true, [12] = true, [18] = true, [43] = true, [44] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		duration = true,
		vaal = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"base_elemental_damage_heals" = ?
		skill("radius", 36), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[20] = { 1, },
	},
}
skills["IcestormUniqueStaff12"] = {
	name = "Icestorm",
	hidden = true,
	color = 3,
	description = "Icy bolts rain down over the targeted area. They explode when landing, dealing damage to nearby enemies and chilling them, as well as causing patches of chilled ground. Skill damage is based on Intelligence.",
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 22), 
		skill("damageEffectiveness", 0.3), 
		skill("CritChance", 5), 
		skill("ColdMin", 1, { type = "PerStat", stat = "Int", div = 10 }), --"spell_minimum_base_cold_damage_+_per_10_intelligence" = 1
		skill("ColdMax", 3, { type = "PerStat", stat = "Int", div = 10 }), --"spell_maximum_base_cold_damage_+_per_10_intelligence" = 3
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
		--"fire_storm_fireball_delay_ms" = 100
		--"skill_override_pvp_scaling_time_ms" = 450
		--"firestorm_drop_ground_ice_duration_ms" = 500
		--"skill_art_variation" = 4
		--"skill_effect_duration_per_100_int" = 150
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
		skill("duration", 0.15, { type = "PerStat", stat = "Int", div = 100, base = 1.5 }), 
		skill("radius", 25), 
		skill("radiusSecondary", 10), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 1, },
	},
}
skills["MerveilWarp"] = {
	name = "Illusory Warp",
	hidden = true,
	color = 4,
	description = "Teleport to a target destination. Chilled ground is spread in an area around both where the caster was and where they teleported to.",
	skillTypes = { [2] = true, [38] = true, [12] = true, [34] = true, [11] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		movement = true,
		cold = true,
	},
	baseMods = {
		skill("castTime", 0.6), 
		skill("manaCost", 20), 
		skill("cooldown", 3), 
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[20] = { 1, },
	},
}
skills["LightningSpell"] = {
	name = "Lightning Bolt",
	hidden = true,
	color = 3,
	description = "A bolt of lightning strikes an area, dealing lightning damage.",
	skillTypes = { [2] = true, [42] = true, [35] = true, [11] = true, [10] = true, [45] = true, [61] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
		lightning = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("CritChance", 6), 
		skill("cooldown", 0.5), 
		--"cast_on_crit_%" = 100
		--"is_area_damage" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 1, 10, 29, },
		[2] = { 2, 11, 33, },
		[3] = { 4, 14, 41, },
		[4] = { 7, 18, 54, },
		[5] = { 11, 25, 75, },
		[6] = { 16, 36, 109, },
		[7] = { 20, 47, 141, },
		[8] = { 24, 60, 180, },
		[9] = { 28, 76, 227, },
		[10] = { 32, 94, 282, },
		[11] = { 36, 116, 348, },
		[12] = { 40, 142, 426, },
		[13] = { 44, 173, 518, },
		[14] = { 48, 209, 626, },
		[15] = { 52, 251, 754, },
		[16] = { 56, 301, 903, },
		[17] = { 60, 359, 1078, },
		[18] = { 64, 428, 1283, },
		[19] = { 67, 486, 1459, },
		[20] = { 70, 552, 1657, },
		[21] = { 72, 601, 1802, },
		[22] = { 74, 653, 1959, },
		[23] = { 76, 709, 2127, },
		[24] = { 78, 770, 2310, },
		[25] = { 80, 835, 2506, },
		[26] = { 82, 906, 2718, },
		[27] = { 84, 982, 2946, },
		[28] = { 86, 1064, 3192, },
		[29] = { 88, 1153, 3458, },
		[30] = { 90, 1248, 3743, },
	},
}
skills["UniqueAnimateWeapon"] = {
	name = "Manifest Dancing Dervish",
	hidden = true,
	color = 4,
	description = "Releases Dancing Dervish to fight by your side. While Dancing Dervish is manifested, you have Onslaught and cannot use Weapons.",
	skillTypes = { [2] = true, [9] = true, [21] = true, [36] = true, [61] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [11] = true, [38] = true, [28] = true, },
	fromItem = true,
	minionList = {
		"UniqueAnimatedWeapon",
	},
	minionUses = {
		["Weapon 1"] = true,
	},
	baseFlags = {
		spell = true,
		minion = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 0.5), 
		--"disable_weapons" = 1
		mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", 25, ModFlag.Attack) }), --"attack_speed_+%" = 25
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 110, ModFlag.Attack) }), --"attack_damage_+%" = 110
		--"chance_to_cast_on_rampage_tier_%" = 100
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", 30) }), --"minion_movement_speed_+%" = 30
		mod("DisableWeapons", "FLAG", true, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), 
		mod("Condition:Onslaught", "FLAG", true, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), 
		skill("minionLevel", 59), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[15] = { 1, },
	},
}
skills["TriggeredMoltenStrike"] = {
	name = "Molten Burst",
	hidden = true,
	color = 1,
	description = "Launch molten projectiles from the point of impact, causing AoE attack damage to enemies where they land.",
	skillTypes = { [3] = true, [1] = true, [11] = true, [33] = true, [57] = true, [47] = true, [48] = true, },
	fromItem = true,
	baseFlags = {
		attack = true,
		projectile = true,
		area = true,
		fire = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 0.15), 
		mod("ProjectileCount", "BASE", 2), --"number_of_additional_projectiles" = 2
		--"attack_trigger_on_melee_hit_%" = 20
		--"show_number_of_projectiles" = ?
		--"base_is_projectile" = ?
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[16] = { 1, },
	},
}
skills["TriggeredSummonSpider"] = {
	name = "Raise Spiders",
	hidden = true,
	color = 3,
	description = "Raise two spectral spiders from each nearby corpse that will leap towards and attack your enemies. Enemies will not engage the spiders directly.",
	skillTypes = { [2] = true, [9] = true, [36] = true, [49] = true, [42] = true, [61] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, },
	fromItem = true,
	minionList = {
		"SpiderMinion",
	},
	baseFlags = {
		spell = true,
		minion = true,
		duration = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 2), 
		--"chance_to_cast_on_kill_%_target_self" = 20
		skill("duration", 8), --"base_skill_effect_duration" = 8000
		mod("ActiveSpiderLimit", "BASE", 20), --"number_of_spider_minions_allowed" = 20
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		--"take_no_actions_while_parent_dead" = ?
		--"minion_dies_when_parent_dies" = ?
		skill("minionLevelIsEnemyLevel", true), --"display_skill_minions_level_is_corpse_level" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 1, },
	},
}
skills["TriggeredShockedGround"] = {
	name = "Shock Ground",
	hidden = true,
	color = 4,
	description = "Creates a patch of Shocked Ground in a radius around you.",
	skillTypes = { [2] = true, [11] = true, [36] = true, [12] = true, [42] = true, [45] = true, [61] = true, [35] = true, },
	fromItem = true,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 5), 
		--"cast_when_hit_%" = 100
		--"skill_art_variation" = 7
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[10] = { 1, },
	},
}
skills["SummonEssenceSpirits"] = {
	name = "Spectral Spirits",
	hidden = true,
	color = 3,
	description = "Summons three invulnerable spectral skulls that rush at nearby enemies and attack them rapidly. Enemies will not engage these spirits, and can pass through them.",
	skillTypes = { [2] = true, [9] = true, [36] = true, [49] = true, [42] = true, [61] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, },
	fromItem = true,
	minionList = {
		"SummonedEssenceSpirit",
	},
	baseFlags = {
		spell = true,
		minion = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("minionDamageEffectiveness", -15), --"active_skill_minion_added_damage_+%_final" = -15
		--"number_of_monsters_to_summon" = 3
		--"cast_on_gain_skill" = ?
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
		--"take_no_actions_while_parent_dead" = ?
		--"minion_dies_when_parent_dies" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 1, },
		[2] = { 2, },
		[3] = { 4, },
		[4] = { 7, },
		[5] = { 11, },
		[6] = { 16, },
		[7] = { 20, },
		[8] = { 24, },
		[9] = { 28, },
		[10] = { 32, },
		[11] = { 36, },
		[12] = { 40, },
		[13] = { 44, },
		[14] = { 48, },
		[15] = { 52, },
		[16] = { 56, },
		[17] = { 60, },
		[18] = { 64, },
		[19] = { 67, },
		[20] = { 70, },
		[21] = { 72, },
		[22] = { 74, },
		[23] = { 76, },
		[24] = { 78, },
		[25] = { 80, },
		[26] = { 82, },
		[27] = { 84, },
		[28] = { 86, },
		[29] = { 88, },
		[30] = { 90, },
	},
}
skills["SummonRigwaldsPack"] = {
	name = "Summon Spectral Wolf",
	hidden = true,
	color = 4,
	description = "Summons a spectral wolf companion that attacks near by enemies and dies after a duration.",
	skillTypes = { [2] = true, [9] = true, [12] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, [42] = true, [61] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, },
	fromItem = true,
	minionList = {
		"SummonedSpectralWolf",
	},
	baseFlags = {
		spell = true,
		minion = true,
		duration = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 30), --"base_skill_effect_duration" = 30000
		mod("ActiveWolfLimit", "BASE", 20), --"number_of_wolves_allowed" = 20
		--"chance_to_cast_on_kill_%_target_self" = 10
		--"display_minion_monster_type" = 8
		skill("minionLevel", 65), --"display_minion_monster_level" = 65
		skill("triggered", true, { type = "SkillType", skillType = SkillType.TriggerableSpell }), --"spell_uncastable_if_triggerable" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[18] = { 66, },
	},
}