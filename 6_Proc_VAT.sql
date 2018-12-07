set serveroutput on;
create or replace procedure print_updated_price 
    (vat IN number, discount IN number, max_price IN number)
IS
price electronics.price%type;

BEGIN
    for r in (
        select modell, price from electronics
    )
    LOOP
        price := r.price * vat;
        if price > max_price then
            price := price - discount;
        end if;
        dbms_output.put_line('Item : ' || r.modell || '     Price : ' || price);
    end loop;

END;
begin
    print_updated_price(1.2, 4000, 70000);
end;