ALTER TABLE Quest
ADD CONSTRAINT Quest_World_FK FOREIGN KEY
(
World_w_id
)
REFERENCES World
(
w_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
