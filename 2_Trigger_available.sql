set serveroutput on;

CREATE OR REPLACE TRIGGER avail
    after insert on shop_inventory
    for each row
DECLARE
    d_available electronics.available%type;
   
BEGIN
    select available into d_available from electronics where d_id = :new.d_id;
    update electronics set available = (:new.available + d_available) where d_id = :new.d_id;
END;
/
--show errors;