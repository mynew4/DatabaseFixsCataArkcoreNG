-- FULL `creature_template` of entry 46963
DELETE FROM `creature_template` WHERE (entry = 46963);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_Mod`, `Mana_Mod`, `Mana_Mod_Extra`, `Armor_Mod`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(46963, 0, 0, 0, 0, 0, 34612, 0, 0, 0, 'Lord Walden', '', '', '', 0, 21, 21, 0, 0, 16, 0, 1, 1.42857, 1, 1, 0, 2000, 2000, 2, 32832, 2099200, 0, 0, 0, 0, 0, 7, 72, 0, 46963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 10, 1, 1, 0, 144, 1, 0, 0, '', 15595);
-- Creating a new SmartAI script for [Creature] ENTRY 46963 (name: Lord Walden)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 46963;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 46963);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(46963, 0, 0, 0, 4, 0, 100, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Text On Aggro'),
(46963, 0, 1, 0, 0, 0, 100, 2, 5000, 7000, 19000, 26000, 11, 93702, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Conjure Frost Mixture'),
(46963, 0, 2, 0, 0, 0, 100, 2, 11000, 14000, 28000, 34000, 11, 93562, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Conjure Mystery Toxin'),
(46963, 0, 3, 0, 0, 0, 100, 2, 8000, 9000, 22000, 25000, 11, 93527, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Ice Shards'),
(46963, 0, 4, 0, 0, 0, 100, 2, 2000, 3000, 14000, 16000, 11, 93697, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Conjure Poisonous Mixture'),
(46963, 0, 5, 0, 6, 0, 100, 3, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Text on Death');