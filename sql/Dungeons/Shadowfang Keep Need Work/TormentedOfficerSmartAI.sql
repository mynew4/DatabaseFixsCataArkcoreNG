DELETE FROM `creature_template` WHERE `entry`=3873;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (3873, 49059, 0, 0, 0, 0, 37294, 37373, 37374, 0, 'Tormented Officer', '', '', 0, 20, 20, 0, 0, 16, 0, 1, 1.14286, 1, 1, 24, 36, 0, 9, 3.8, 2000, 2000, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 19, 29, 7, 6, 72, 0, 3873, 3873, 0, 0, 0, 0, 0, 0, 0, 7054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10030, 10030, 'SmartAI', 1, 3, 1, 4, 1, 1, 1, 0, 60875, 0, 0, 0, 0, 0, 0, 1, 0, 8388625, 0, '', 15595);
DELETE FROM `creature_template` WHERE `entry`=49059;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (49059, 0, 0, 0, 0, 0, 37294, 37373, 37374, 0, 'Tormented Officer (1)', '', '', 0, 85, 85, 3, 0, 16, 0, 1, 1.14286, 1, 1, 375, 562, 0, 141, 42.9, 1500, 1500, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 300, 450, 113, 6, 72, 0, 49059, 3873, 0, 0, 0, 0, 0, 0, 0, 7054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10030, 10030, '', 0, 3, 1, 5, 1, 1, 1, 0, 60875, 0, 0, 0, 0, 0, 0, 1, 0, 8388625, 0, '', 15595);


-- Generated by Event Horizon - SAI Editor (http://devsource-eventhorizon.tk/)

-- Tormented Officer
SET @ENTRY := 3873;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,2000,3000,25000,30000,11,7054,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Cast Forsaken Ability"),
(@ENTRY,@SOURCETYPE,1,0,2,0,100,4,0,50,14000,15000,11,91463,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Cast Shield Wall at 50% HP");