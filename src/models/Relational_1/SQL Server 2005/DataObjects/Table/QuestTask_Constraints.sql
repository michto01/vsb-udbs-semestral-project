ALTER TABLE QuestTask ADD CONSTRAINT QuestTask_PK PRIMARY KEY CLUSTERED (qt_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO