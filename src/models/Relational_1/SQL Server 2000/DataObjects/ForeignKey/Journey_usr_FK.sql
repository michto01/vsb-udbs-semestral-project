ALTER TABLE Journey
ADD CONSTRAINT Journey_usr_FK FOREIGN KEY
(
usr_u_id
)
REFERENCES "User"
(
u_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
