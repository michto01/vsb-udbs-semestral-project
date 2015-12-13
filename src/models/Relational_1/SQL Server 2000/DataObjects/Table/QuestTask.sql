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
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'We allow only 60bytes in qest-task. No reason really, just old habits.' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_name'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The quest-task have fixed type for which smallint is sufficient.' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_type'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'0-100 -> dificulty multiplicator for the quest' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_dificulty'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'URI for the game data if any.' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_uri_data'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'URI to <Quest Task> image for the menu.' ,
'TABLE' ,
'QuestTask' ,
'COLUMN' ,
'qt_uri_badge'
GO
