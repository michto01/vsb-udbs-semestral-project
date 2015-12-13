CREATE
  TABLE Quest
  (
    q_id BIGINT NOT NULL ,
    q_start DATETIME ,
    q_end   DATETIME NOT NULL ,
    World_w_id BIGINT
  )
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The begining of the quest is not mandatory as the old qest were not marked with start date, but new records should treat this field as mandatory.'
,
'TABLE' ,
'Quest' ,
'COLUMN' ,
'q_start'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'The end of the qest is mandatory' ,
'TABLE' ,
'Quest' ,
'COLUMN' ,
'q_end'
GO
