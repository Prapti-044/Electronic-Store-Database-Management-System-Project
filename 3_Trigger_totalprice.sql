set serveroutput on;

CREATE OR REPLACE TRIGGER totalprice
    before insert on transactions
    for each row
DECLARE
    d_price electronics.price%type;

BEGIN
    select price into d_price from electronics where d_id = :new.d_id;
    :new.tprice := (:new.quantity * d_price);
END;
/
show errors;