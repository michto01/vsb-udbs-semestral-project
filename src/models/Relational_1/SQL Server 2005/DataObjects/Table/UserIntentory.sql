CREATE
  TABLE UserIntentory
  (
    i_id BIGINT NOT NULL ,
    i_name VARCHAR (50) NOT NULL ,
    i_type SMALLINT ,
    i_content TEXT
  )
  ON "default"
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'Names of items should be keept long to allow simpler search.' ,
'USER' ,
'dbo' ,
'TABLE' ,
'UserIntentory' ,
'COLUMN' ,
'i_name'
GO
EXEC sp_addextendedproperty 'MS_Description' ,
'We only support fixed set of equipment and item types, thous we can use fixed smallint without accom. table with types, because as such we know them and only need to enumerate them. Also item can have no type indicating it has multiple types. In those cases the JSON inside <i_value> keeps track of all it'
s properties.' , 'USER' , 'DBO' , 'TABLE' , 'UserIntentory' , 'COLUMN' , '
i_type' 
GO



EXEC sp_addextendedproperty 'MS_Description' , 'JSON string
describing properties OF the object;
because we have really strange objects we keep it IN JSON
WITH
  the original parser
FROM
  OLD engine OF JM.' , 'USER' , 'DBO' , 'TABLE' , 'UserIntentory' , 'COLUMN
  ' , 'i_content' 
GO
