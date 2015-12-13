ALTER TABLE JourneyTask ADD CONSTRAINT JourneyTask_PK PRIMARY KEY CLUSTERED (
QuestTask_qt_id, Journey_j_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO