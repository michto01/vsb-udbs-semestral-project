CREATE
  TABLE Journey
  (
    j_id BIGINT NOT NULL ,
    j_points BIGINT NOT NULL ,
    j_points_max BIGINT NOT NULL ,
    j_status SMALLINT ,
    usr_u_id BIGINT
  )
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Maximum avaliable points for this journey' ,
'TABLE' ,
'Journey' ,
'COLUMN' ,
'j_points_max'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The current status of the quest of the user.' ,
'TABLE' ,
'Journey' ,
'COLUMN' ,
'j_status'
GO
