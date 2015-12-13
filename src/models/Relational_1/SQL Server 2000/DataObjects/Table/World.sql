CREATE
  TABLE World
  (
    w_id BIGINT NOT NULL ,
    w_short_name VARCHAR (10) NOT NULL ,
    w_fullname   VARCHAR (255) NOT NULL
  )
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'ASCII short name for the server/world' ,
'TABLE' ,
'World' ,
'COLUMN' ,
'w_short_name'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'We adhere old issue fix #3405 to trim name if longer then 255B to support some weird devices.'
,
'TABLE' ,
'World' ,
'COLUMN' ,
'w_fullname'
GO
