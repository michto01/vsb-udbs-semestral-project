CREATE
  TABLE Journey
  (
    j_id BIGINT NOT NULL ,
    j_points BIGINT NOT NULL ,
    j_points_max BIGINT NOT NULL ,
    j_status SMALLINT ,
    User_u_id BIGINT
  )
  ON "default"
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Maximum avaliable points for this journey' ,
'USER' ,
'dbo' ,
'TABLE' ,
'Journey' ,
'COLUMN' ,
'j_points_max'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The current status of the quest of the user.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'Journey' ,
'COLUMN' ,
'j_status'
GO
