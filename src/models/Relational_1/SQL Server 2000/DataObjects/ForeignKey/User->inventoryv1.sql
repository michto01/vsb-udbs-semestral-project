ALTER TABLE "User"
ADD CONSTRAINT "User->inventoryv1" FOREIGN KEY
REFERENCES UserIntentory
(
i_id
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
