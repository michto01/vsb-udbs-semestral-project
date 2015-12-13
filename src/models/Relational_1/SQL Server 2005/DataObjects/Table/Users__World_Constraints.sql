ALTER TABLE Users__World ADD CONSTRAINT Users__World_PK PRIMARY KEY CLUSTERED (
User_u_id, World_w_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO