CREATE
  TABLE QuestTask
  (
    qt_id BIGINT NOT NULL ,
    qt_name      VARCHAR (60) NOT NULL ,
    qt_type      SMALLINT NOT NULL ,
    qt_dificulty SMALLINT NOT NULL ,
    qt_uri_data TEXT ,
    qt_uri_badge TEXT ,
    Quest_q_id BIGINT
  )
  ON "default"
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'We allow only 60bytes in qest-task. No reason really, just old habits.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_name'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The quest-task have fixed type for which smallint is sufficient.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_type'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'0-100 -> dificulty multiplicator for the quest' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_dificulty'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'URI for the game data if any.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_uri_data'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'URI to <Quest Task> image for the menu.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_uri_badge'
GO
