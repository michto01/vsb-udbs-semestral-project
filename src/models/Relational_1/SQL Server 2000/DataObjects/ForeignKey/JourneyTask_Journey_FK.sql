ALTER TABLE JourneyTask
ADD CONSTRAINT JourneyTask_Journey_FK FOREIGN KEY
(
Journey_j_id
)
REFERENCES Journey
(
j_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO