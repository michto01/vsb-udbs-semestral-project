ALTER TABLE QuestTask
ADD CONSTRAINT QuestTask_Quest_FK FOREIGN KEY
(
Quest_q_id
)
REFERENCES Quest
(
q_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO