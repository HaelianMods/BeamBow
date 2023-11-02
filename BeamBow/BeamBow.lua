--[[
    BeamBow v0.1
    Author:
        pseudo

    Replaces Zag Bow  with the Beam Bow

]]

ModUtil.RegisterMod( "BeamBow" )


ModUtil.WrapBaseFunction("EquipWeaponUpgrade",
	function(baseFunc, hero, args)
		local currentWeaponInSlot = GetEquippedWeapon()
		if GetWeaponUpgradeTrait(currentWeaponInSlot, GameState.LastWeaponUpgradeData[currentWeaponInSlot].Index) == "BowBaseUpgradeTrait" then
				AddTraitToHero({ TraitName = "BowBeamTrait", Rarity = "Legendary" })
		else
			--game otherwise does not properly remove beambow when changing aspects
			RemoveTrait( CurrentRun.Hero, "BowBeamTrait")
			baseFunc(hero,args)
		end
	end, BeamBow)

--Add back the removed modifications that gave beam animations (and the other ones in the same comment block, idk I don't understand all of them)
		table.remove(TraitData.BowBeamTrait.PropertyChanges)
		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
                WeaponNames = { "BowSplitShot" },
                ProjectileProperty = "DamageHigh",
                ChangeValue = 70,
                ChangeType = "Absolute",
                ExcludeLinked = true,
            })
		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "Type",
				ChangeValue = "BEAM",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})
		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "MultiDetonate",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})

		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "DrawAsBeam",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})
		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "GroupName",
				ChangeValue = "Standing",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})

		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "TipFx",
				ChangeValue = "DemeterLaserTipFlare",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})

		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "DemeterLaser",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})

		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "Fuse",
				ChangeValue = 0.2,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})

		table.insert(TraitData.BowBeamTrait.PropertyChanges,
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "TotalFuse",
				ChangeValue = 0.4,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			})
		
		table.insert(TraitData.BowBeamTrait.PropertyChanges, 1,
			{
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Type",
				ChangeValue = "BEAM",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			}) 	


