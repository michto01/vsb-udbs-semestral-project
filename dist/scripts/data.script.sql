/*
Navicat Premium Data Transfer

Source Server         : vsb-2016
Source Server Type    : SQL Server
Source Server Version : 11005343
Source Host           : dbsys.cs.vsb.cz\STUDENT
Source Database       : mic0220
Source Schema         : MIC0220

Target Server Type    : SQL Server
Target Server Version : 11005343
File Encoding         : utf-8

Date: 12/21/2015 00:05:46 AM
*/

-- ----------------------------
--  Records of Journey
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[Journey] VALUES ('1', '190', '200', '1', '3');
GO
COMMIT
GO

-- ----------------------------
--  Records of JourneyTask
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[JourneyTask] VALUES ('1', '1', '1');
INSERT INTO [MIC0220].[JourneyTask] VALUES ('3', '6', '1');
INSERT INTO [MIC0220].[JourneyTask] VALUES ('4', '8', '1');
GO
COMMIT
GO

-- ----------------------------
--  Records of Quest
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[Quest] VALUES ('1', null, '2015-12-18 12:13:15.000', '2');
INSERT INTO [MIC0220].[Quest] VALUES ('2', '2015-12-18 12:13:47.000', '2017-12-18 12:13:51.000', '1');
INSERT INTO [MIC0220].[Quest] VALUES ('3', '2015-07-08 12:14:21.000', '2016-01-01 00:00:00.000', '1');
INSERT INTO [MIC0220].[Quest] VALUES ('4', '2011-12-18 12:15:20.000', '2014-12-21 12:15:02.000', '6');
INSERT INTO [MIC0220].[Quest] VALUES ('5', '2013-12-18 12:15:45.000', '2014-12-13 12:15:53.000', '6');
INSERT INTO [MIC0220].[Quest] VALUES ('6', '2012-12-20 22:14:33.000', '2015-12-31 22:14:45.000', '1');
INSERT INTO [MIC0220].[Quest] VALUES ('7', '2015-12-18 22:15:20.000', '2015-12-20 22:15:17.000', '3');
GO
COMMIT
GO

-- ----------------------------
--  Records of QuestTask
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[QuestTask] VALUES ('1', 'Find wookie', '1', '1', 'http://content.journeymaster.com/tasks/joob/az', null, '1');
INSERT INTO [MIC0220].[QuestTask] VALUES ('2', 'Save Princess', '2', '1', 'http://content.journeymaster.com/tasks/joob/bz', null, '1');
INSERT INTO [MIC0220].[QuestTask] VALUES ('3', 'Board Falcon Milenium', '1', '1', 'http://content.journeymaster.com/tasks/joob/cz', null, '1');
INSERT INTO [MIC0220].[QuestTask] VALUES ('4', 'Drive FM trought asteroids', '1', '1', 'http://content.journeymaster.com/tasks/joob/dz', null, '1');
INSERT INTO [MIC0220].[QuestTask] VALUES ('5', 'Explore ruins', '1', '2', 'http://content.journeymaster.com/tasks/zoob/az', null, '2');
INSERT INTO [MIC0220].[QuestTask] VALUES ('6', 'Activate gateway', '3', '2', 'http://content.journeymaster.com/tasks/zoob/bz', null, '2');
GO
COMMIT
GO

-- ----------------------------
--  Records of QuestTaskItem
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('1', 'Screwdriwer', '{"json":"data"}', null, '100', '1');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('2', 'Partial map I', '{"json":"data"}', null, '3', '1');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('3', 'Partial map II', '{"json":"data"}', null, '3', '1');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('4', 'Capacitor', '{"json":"data"}', null, '5', '1');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('5', 'Item 1', '{"json":"data"}', null, '100', '3');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('6', 'Item 2', '{"json":"data"}', null, '1', '3');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('7', 'Asteroid shrapnel', '{"json":"data"}', null, '5', '4');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('8', 'Asteroid navigation sw', '{"json":"data"}', null, '100', '4');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('9', 'Asteroid photo', '{"json":"data"}', null, '0', '4');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('10', 'map of ruins', '{"json":"data"}', null, '100', '5');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('11', 'forgotten staff', '{"json":"data"}', null, '100', '5');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('12', 'crown', '{"json":"data"}', null, '2', '5');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('13', 'gate password', '{"json":"data"}', null, '100', '6');
INSERT INTO [MIC0220].[QuestTaskItem] VALUES ('14', 'gate key', '{"json":"data"}', null, '50', '6');
GO
COMMIT
GO

-- ----------------------------
--  Records of User
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[User] VALUES ('1', 'pas', 'michto01@gmail.com', 'admin');
INSERT INTO [MIC0220].[User] VALUES ('2', 'glg', 'blk@jm.com', 'player');
INSERT INTO [MIC0220].[User] VALUES ('3', 'lkajf', 'bobba@jm.com', 'player');
INSERT INTO [MIC0220].[User] VALUES ('4', 'lkajsfl', 'modd@journeymaster.com', 'moderator');
INSERT INTO [MIC0220].[User] VALUES ('5', 'kjahsfklow', 'lkja@gmail.com', 'player');
INSERT INTO [MIC0220].[User] VALUES ('6', 'al;eoihafn', 'han@seznam.cz', 'player');
INSERT INTO [MIC0220].[User] VALUES ('7', 'lakfjubfi', 'zorro@journeymaster.com', 'player');
GO
COMMIT
GO

-- ----------------------------
--  Records of User_inventory
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[User_inventory] VALUES ('2', '2');
GO
COMMIT
GO

-- ----------------------------
--  Records of UserDetails
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[UserDetails] VALUES ('1', 'Tomas', 'Michalek', 'misio', '1993-09-20 22:50:57.000', null, '10');
INSERT INTO [MIC0220].[UserDetails] VALUES ('2', 'Blake', 'Zebra', 'blk', '1981-12-20 22:51:43.000', null, '1');
INSERT INTO [MIC0220].[UserDetails] VALUES ('3', 'Bobba', 'Fet', 'clone', '1945-12-20 22:52:30.000', null, '3');
INSERT INTO [MIC0220].[UserDetails] VALUES ('4', 'Moureen', 'DeDerron', 'modd', '2000-12-19 22:53:33.000', null, '4');
GO
COMMIT
GO

-- ----------------------------
--  Records of UserIntentory
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[UserIntentory] VALUES ('1', 'sword', '1', '{"dur":10, "fig":0}');
INSERT INTO [MIC0220].[UserIntentory] VALUES ('2', 'staff', '1', '{"power":3,"damage":2}');
GO
COMMIT
GO

-- ----------------------------
--  Records of Users_World
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[Users_World] VALUES ('1', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('1', '5');
INSERT INTO [MIC0220].[Users_World] VALUES ('2', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('2', '2');
INSERT INTO [MIC0220].[Users_World] VALUES ('2', '5');
INSERT INTO [MIC0220].[Users_World] VALUES ('3', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('3', '3');
INSERT INTO [MIC0220].[Users_World] VALUES ('4', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('4', '2');
INSERT INTO [MIC0220].[Users_World] VALUES ('5', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('6', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('7', '1');
INSERT INTO [MIC0220].[Users_World] VALUES ('7', '5');
GO
COMMIT
GO

-- ----------------------------
--  Records of World
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [MIC0220].[World] VALUES ('1', 'DUL', 'Dulardan');
INSERT INTO [MIC0220].[World] VALUES ('2', 'AHO', 'Aholdia');
INSERT INTO [MIC0220].[World] VALUES ('3', 'TRA', 'Traversia');
INSERT INTO [MIC0220].[World] VALUES ('4', 'MOG', 'Mogunia');
INSERT INTO [MIC0220].[World] VALUES ('5', 'ZIB', 'Zibbo-Ug''h');
INSERT INTO [MIC0220].[World] VALUES ('6', 'ORD', 'Orderen');
INSERT INTO [MIC0220].[World] VALUES ('7', 'OEA', 'Oearinaa');
INSERT INTO [MIC0220].[World] VALUES ('8', 'SWD', 'Swordenia');
INSERT INTO [MIC0220].[World] VALUES ('9', 'ALD', 'Aldaran');
GO
COMMIT
GO

/*
-- ----------------------------
--  Options for table Journey
-- ----------------------------
ALTER TABLE [MIC0220].[Journey] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table JourneyTask
-- ----------------------------
ALTER TABLE [MIC0220].[JourneyTask] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table Quest
-- ----------------------------
ALTER TABLE [MIC0220].[Quest] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table QuestTask
-- ----------------------------
ALTER TABLE [MIC0220].[QuestTask] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table QuestTaskItem
-- ----------------------------
ALTER TABLE [MIC0220].[QuestTaskItem] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table User
-- ----------------------------
ALTER TABLE [MIC0220].[User] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table User_inventory
-- ----------------------------
ALTER TABLE [MIC0220].[User_inventory] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table UserDetails
-- ----------------------------
ALTER TABLE [MIC0220].[UserDetails] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table UserIntentory
-- ----------------------------
ALTER TABLE [MIC0220].[UserIntentory] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table Users_World
-- ----------------------------
ALTER TABLE [MIC0220].[Users_World] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
--  Options for table World
-- ----------------------------
ALTER TABLE [MIC0220].[World] SET (LOCK_ESCALATION = TABLE)
GO
*/
