ALTER TABLE User_inventory ADD CONSTRAINT User_inventory_PK PRIMARY KEY
CLUSTERED (User_u_id, UserIntentory_i_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO