ALTER TABLE World ADD CONSTRAINT World_PK PRIMARY KEY CLUSTERED (w_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO