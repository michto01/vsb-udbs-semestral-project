ALTER TABLE QuestTaskItem ADD CONSTRAINT QuestTaskItem_PK PRIMARY KEY CLUSTERED
(qi_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO