ALTER TABLE UserIntentory
ADD CONSTRAINT User_inventory FOREIGN KEY
REFERENCES "User"
(
u_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
