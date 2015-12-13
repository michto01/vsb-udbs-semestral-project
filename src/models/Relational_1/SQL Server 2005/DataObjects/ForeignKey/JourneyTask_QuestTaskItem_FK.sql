ALTER TABLE JourneyTask
ADD CONSTRAINT JourneyTask_QuestTaskItem_FK FOREIGN KEY
(
QuestTaskItem_qi_id
)
REFERENCES QuestTaskItem
(
qi_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
