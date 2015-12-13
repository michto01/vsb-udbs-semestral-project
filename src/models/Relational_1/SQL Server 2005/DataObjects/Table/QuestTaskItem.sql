CREATE
  TABLE QuestTaskItem
  (
    qi_id BIGINT NOT NULL ,
    qi_name VARCHAR (60) NOT NULL ,
    qi_data TEXT NOT NULL ,
    qi_uri_image TEXT ,
    qi_evaluation BIGINT NOT NULL ,
    qt_id BIGINT NOT NULL ,
    qi_id1 BIGINT NOT NULL ,
    QuestTask_qt_id BIGINT
  )
  ON "default"
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'JSON data for the quest task' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTaskItem' ,
'COLUMN' ,
'qi_data'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Point or percent to evaluate.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTaskItem' ,
'COLUMN' ,
'qi_evaluation'
GO
