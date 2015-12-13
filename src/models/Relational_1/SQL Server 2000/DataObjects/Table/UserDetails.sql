CREATE
  TABLE UserDetails
  (
    ue_name     VARCHAR (80) NOT NULL ,
    ue_surname  VARCHAR (100) ,
    ue_nickname VARCHAR (30) ,
    ue_dob      DATETIME NOT NULL ,
    ue_uri_avatar TEXT ,
    ue_level SMALLINT NOT NULL ,
    usr_u_id BIGINT NOT NULL ,
    ue_id UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    NOT NULL
  )
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Maximum allowed 'name' range is 80Bytes' ,
'TABLE' ,
'UserDetails' ,
'COLUMN' ,
'ue_name'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Maximum allowed length is 100Bytes' ,
'TABLE' ,
'UserDetails' ,
'COLUMN' ,
'ue_surname'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Nickname are usually short : max length 30B' ,
'TABLE' ,
'UserDetails' ,
'COLUMN' ,
'ue_nickname'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'DOB = day of birth, manadatory' ,
'TABLE' ,
'UserDetails' ,
'COLUMN' ,
'ue_dob'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'URI of the user image.' ,
'TABLE' ,
'UserDetails' ,
'COLUMN' ,
'ue_uri_avatar'
GO
CREATE UNIQUE NONCLUSTERED INDEX
UserDetails__IDX ON UserDetails
(
  usr_u_id
)
GO
