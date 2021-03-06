DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210306182435');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210306182435');
-- Add your query below.


-- update emote id's
UPDATE `broadcast_text` SET `emote_id1` = 1 WHERE `entry` = 6005;
UPDATE `broadcast_text` SET `emote_id1` = 1 WHERE `entry` = 6020;
UPDATE `broadcast_text` SET `emote_id1` = 25 WHERE `entry` = 5966;
UPDATE `broadcast_text` SET `emote_id1` = 5 WHERE `entry` = 5968;
UPDATE `broadcast_text` SET `emote_id1` = 5 WHERE `entry` = 5967;
UPDATE `broadcast_text` SET `emote_id1` = 5 WHERE `entry` = 6025;
UPDATE `broadcast_text` SET `emote_id1` = 21 WHERE `entry` = 6072;
UPDATE `broadcast_text` SET `emote_id1` = 21 WHERE `entry` = 6073;
UPDATE `broadcast_text` SET `emote_id1` = 21 WHERE `entry` = 6074;
UPDATE `broadcast_text` SET `emote_id1` = 1 WHERE `entry` = 6091;
UPDATE `broadcast_text` SET `emote_id1` = 21 WHERE `entry` = 6098;
UPDATE `broadcast_text` SET `emote_id1` = 2 WHERE `entry` = 6099;
UPDATE `broadcast_text` SET `emote_id1` = 1 WHERE `entry` = 6100;

-- Add Krang Stonehoof Event and Scripts
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 3063;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (306301, 3063, 0, 1, 0, 100, 1, 0, 0, 360000, 360000, 306301, 0, 0, 'Krang Stonehoof - Start Script OOC');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 39, 306301, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Start Script');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 68, 1072101, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 28, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Stand State');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 0, 28, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Stand State');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6005, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 6, 3, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, -2338.61, -513.379, -9.42474, 2.06132, 0, 'Thontek Rumblehoof - Move');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 6, 3, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, -2356.47, -518.23, -9.42476, 1.21545, 0, 'Hulfnar Stonetotem - Move');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 9, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 9, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6020, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 15, 35, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0.264, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 15, 35, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 3.405, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 18, 0, 0, 0, 0, 0, 24781, 0, 9, 2, 5966, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 24, 0, 0, 0, 0, 0, 24784, 0, 9, 2, 5968, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 27, 1, 25, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 29, 0, 0, 0, 0, 0, 24781, 0, 9, 2, 5967, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6025, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 36, 1, 15, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 36, 1, 15, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 4, 46, 512, 2, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Modify Flags');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 22, 1607, 3, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Faction');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 22, 1606, 3, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Faction');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 37, 4, 46, 512, 2, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Modify Flags');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 38, 39, 2478401, 0, 0, 0, 24784, 0, 9, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Start Script - Start Attack');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 38, 39, 2478101, 0, 0, 0, 24781, 0, 9, 2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Start Script - Start Attack');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 54, 15, 16740, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Cast Spell');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6072, 6073, 6074, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 64, 15, 16740, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Cast Spell');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6072, 6073, 6074, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 35, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 3.405, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 73, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Combat Stop');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 73, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Combat Stop');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6091, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 70, 35, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0.264, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 71, 68, 1072102, 2, 10721, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Start Script For All');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6098, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 76, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 76, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6099, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 35, 0, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 80, 35, 0, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Orientation');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 81, 1, 2, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 81, 1, 2, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Emote');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6100, 0, 0, 0, 0, 0, 0, 0, 0, 'Krang Stonehoof - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 85, 3, 0, 0, 2, 0, 24781, 0, 9, 2, 0, 0, 0, 0, -2360.29, -519.246, -9.29993, 0.261799, 0, 'Hulfnar Stonetotem - Move');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 85, 3, 0, 0, 2, 0, 24784, 0, 9, 2, 0, 0, 0, 0, -2333.96, -512.051, -9.29993, 3.40339, 0, 'Thontek Rumblehoof - Move');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 92, 28, 1, 0, 0, 0, 24781, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Set Stand State');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (306301, 92, 28, 1, 0, 0, 0, 24784, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Set Stand State');

-- Add Novice Warrior Generic Scripts
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072101, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Stand State');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072102, 0, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Stand State');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072103, 0, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Phase 1');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1072104, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Novice Warrior - Set Phase 0');


-- ADD Thontek Rumblehoof Generic Script
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2478401, 0, 26, 0, 0, 0, 0, 24781, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thontek Rumblehoof - Start Attack');

-- ADD Hulfnar Stonetotem Generic Script
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2478101, 0, 26, 0, 0, 0, 0, 24784, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulfnar Stonetotem - Start Attack');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
