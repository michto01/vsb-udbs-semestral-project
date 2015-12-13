CREATE
  TABLE "User"
  (
    u_id BIGINT NOT NULL ,
    u_password VARCHAR (128) NOT NULL ,
    u_email    VARCHAR (255) NOT NULL ,
    u_role_str VARCHAR (60) NOT NULL
  )
  ON "default"
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Primary key of <USER> table' ,
'USER' ,
'dbo' ,
'TABLE' ,
'User' ,
'COLUMN' ,
'u_id'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Passwords are mandatory, no user can exist without password for security reasons.'
,
'USER' ,
'dbo' ,
'TABLE' ,
'User' ,
'COLUMN' ,
'u_password'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Uses common axiom, that user`s email should not be longer than 255 characters.'
,
'USER' ,
'dbo' ,
'TABLE' ,
'User' ,
'COLUMN' ,
'u_email'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Shoud not by longer than 60 characters' ,
'USER' ,
'dbo' ,
'TABLE' ,
'User' ,
'COLUMN' ,
'u_role_str'
GO
