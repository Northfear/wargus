--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	units.ccl	-	Define the used unit-types.
--
--	(c) Copyright 1998,2000-2002 by Lutz Sammer
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--	$Id$

-- Load the animations for the units.
Load("ccl/anim.lua")

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--
DefineUnitType("unit-nothing-22", { Name = "Nothing 22",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 10,
  DrawLevel = 0,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-24", { Name = "Nothing 24",
  Files = {},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-25", { Name = "Nothing 25",
  Files = {},
  Size = {32, 32},
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-30", { Name = "Nothing 30",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-36", { Name = "Nothing 36",
  Files = {},
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-daemon", { Name = "Daemon",
  Files = {"tileset-summer", "neutral/units/daemon.png"},
  Size = {72, 72},
  Animations = "animations-daemon", Icon = "icon-daemon",
  Costs = {"time", 70, "gold", 500, "oil", 50},
  NeutralMinimapColor = {192, 0, 0},
  Speed = 14,
  HitPoints = 60,
  DrawLevel = 60,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
  Armor = 3, BasicDamage = 10, PiercingDamage = 2, Missile = "missile-daemon-fire",
  MaxAttackRange = 3,
  Priority = 63,
  Points = 100,
  Demand = 1,
  Type = "fly",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  DetectCloak = true,
  organic = True,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "daemon-selected",
    "acknowledge", "daemon-acknowledge",
    "ready", "daemon-ready",
    "help", "basic orc voices help 1",
    "dead", "basic orc voices dead",
    "attack", "daemon-attack"} } )

DefineUnitType("unit-critter", { Name = "Critter",
  Files = {"tileset-summer", "tilesets/summer/neutral/units/critter.png",
    "tileset-winter", "tilesets/winter/neutral/units/critter.png",
    "tileset-wasteland", "tilesets/wasteland/neutral/units/critter.png",
    "tileset-swamp", "tilesets/swamp/neutral/units/critter.png"},
  Size = {32, 32},
  Animations = "animations-critter", Icon = "icon-critter",
  NeutralMinimapColor = {192, 192, 192},
  Speed = 3,
  HitPoints = 5,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2, ComputerReactionRange = 20, PersonReactionRange = 10,
  BasicDamage = 80, PiercingDamage = 0, Missile = "missile-critter-explosion",
  MaxAttackRange = 1,
  Priority = 37,
  Points = 1,
  Demand = 1,
  Type = "land",
  RightMouseAction = "move",
  CanTargetLand = true,
  LandUnit = true,
  RandomMovementProbability = 100,
  ClicksToExplode = 10,
  organic = True,
  Sounds = {
    "selected", "critter-selected",
    "acknowledge", "critter-acknowledge",
    "ready", "critter-ready",
    "help", "critter-help",
    "dead", "critter-dead",
    "attack", "critter-attack"} } )

DefineUnitType("unit-gold-mine", { Name = "Gold Mine",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/gold_mine.png",
    "tileset-winter", "tilesets/winter/neutral/buildings/gold_mine.png",
    "tileset-wasteland", "tilesets/wasteland/neutral/buildings/gold_mine.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/gold_mine.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-gold-mine",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 150},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 25500,
  DrawLevel = 40,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  GivesResource = "gold", CanHarvest = true,
  Sounds = {
    "selected", "gold-mine-selected",
    "acknowledge", "gold-mine-acknowledge",
    "ready", "gold-mine-ready",
    "help", "gold-mine-help",
    "dead", "building destroyed",
    "attack", "gold-mine-attack"} } )

DefineUnitType("unit-oil-patch", { Name = "Oil Patch",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/oil_patch.png",
    "tileset-wasteland", "tilesets/wasteland/neutral/buildings/oil_patch.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/oil_patch.png"},
  Size = {96, 96},
  Animations = "animations-building", Icon = "icon-oil-patch",
  NeutralMinimapColor = {0, 0, 0},
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "naval",
  Building = true, VisibleUnderFog = true,
  GivesResource = "oil",
  Sounds = {
    "selected", "oil-patch-selected",
    "acknowledge", "oil-patch-acknowledge",
    "ready", "oil-patch-ready",
    "help", "oil-patch-help",
    "dead", "building destroyed",
    "attack", "oil-patch-attack"} } )

DefineUnitType("unit-circle-of-power", { Name = "Circle of Power",
  Files = {"tileset-summer", "neutral/buildings/circle_of_power.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-circle-of-power",
  NeutralMinimapColor = {128, 128, 0},
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Sounds = {
    "selected", "circle-of-power-selected",
    "acknowledge", "circle-of-power-acknowledge",
    "ready", "circle-of-power-ready",
    "help", "basic human voices help 2",
    "dead", "building destroyed",
    "attack", "circle-of-power-attack"} } )

DefineUnitType("unit-dark-portal", { Name = "Dark Portal",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/dark_portal.png",
    "tileset-winter", "tilesets/winter/neutral/buildings/dark_portal.png",
    "tileset-wasteland", "tilesets/wasteland/neutral/buildings/dark_portal.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/dark_portal.png"},
  Size = {128, 128},
  Animations = "animations-building", Icon = "icon-dark-portal",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 100, "gold", 3000, "wood", 3000, "oil", 1000},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 5000,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 4,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = {"unit-destroyed-4x4-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, BuilderOutside = true,
  Teleporter = true,
  Sounds = {
    "selected", "dark-portal-selected",
    "acknowledge", "dark-portal-acknowledge",
    "ready", "dark-portal-ready",
    "help", "basic orc voices help 2",
    "dead", "building destroyed",
    "attack", "dark-portal-attack"} } )

DefineUnitType("unit-runestone", { Name = "Runestone",
  Files = {"tileset-summer", "neutral/buildings/runestone.png",
    "tileset-winter", "tilesets/winter/neutral/buildings/runestone.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/runestone.png"},
  Size = {64, 64},
  Animations = "animations-building", Icon = "icon-runestone",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 175, "gold", 900, "wood", 500},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 5000,
  DrawLevel = 40,
  MaxMana = 255,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 4,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 15, AnnoyComputerFactor = 35,
  Points = 150,
  Corpse = {"unit-destroyed-2x2-place", 0},
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true, BuilderOutside = true,
  Sounds = {
    "selected", "runestone-selected",
    "acknowledge", "runestone-acknowledge",
    "ready", "runestone-ready",
    "help", "basic orc voices help 2",
    "dead", "building destroyed",
    "attack", "runestone-attack"} } )

DefineUnitType("unit-dead-body", { Name = "Dead Body",
  Files = {"tileset-summer", "neutral/units/corpses.png"},
  Size = {72, 72},
  Animations = "animations-dead-body", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
  Files = {
    "tileset-summer", "tilesets/summer/neutral/buildings/small_destroyed_site.png",
    "tileset-winter", "tilesets/winter/neutral/buildings/small_destroyed_site.png",
    "tileset-wasteland",
      "tilesets/wasteland/neutral/buildings/small_destroyed_site.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/small_destroyed_site.png"},
  Size = {32, 32},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-destroyed-2x2-place", { Name = "Destroyed 2x2 Place",
  Files = {"tileset-summer", "tilesets/summer/neutral/buildings/destroyed_site.png",
    "tileset-winter", "tilesets/winter/neutral/buildings/destroyed_site.png",
    "tileset-wasteland", "tilesets/wasteland/neutral/buildings/destroyed_site.png",
    "tileset-swamp", "tilesets/swamp/neutral/buildings/destroyed_site.png"},
  Size = {64, 64},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 2,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-destroyed-3x3-place", { Name = "Destroyed 3x3 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {96, 96},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 3,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-destroyed-4x4-place", { Name = "Destroyed 4x4 Place",
  Use = "unit-destroyed-2x2-place",
  Size = {128, 128},
  Animations = "animations-destroyed-place", Icon = "icon-peasant",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 3,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-revealer", { Name = "Dummy unit",
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-holy-vision",
  Speed = 0,
  HitPoints = 1,
  TileSize = {1, 1}, BoxSize = {1, 1},
  SightRange = 12,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  DecayRate = 1,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Revealer = true,
  DetectCloak = true,
  Sounds = {} } )

DefineUnitType("unit-reveal-attacker", { Name = "Dummy unit",
  Size = {0, 0},
  Animations = "animations-building", Icon = "icon-holy-vision",
  Speed = 0,
  HitPoints = 0,
  TileSize = {1, 1}, BoxSize = {1, 1},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  DecayRate = 1,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Sounds = {} } )

-- Load the different races
Load("ccl/human/units.lua")
Load("ccl/orc/units.lua")

