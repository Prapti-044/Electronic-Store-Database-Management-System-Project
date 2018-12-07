create or replace function get_premium_users 
    (min_purchase IN number)
    return number
IS
    cname customers.c_name%type;
BEGIN
    dbms_output.put_line('Premium users are : ');
    for r in (
        select c_id, sum(tprice) as total_price from transactions group by c_id
    )  

    loop 
        if r.total_price > min_purchase then
            select c.c_name into cname from customers c where c.c_id = r.c_id;
                dbms_output.put_line(cname);
        end if;
        
    end loop;

    return 0;
END;

declare
    dummy number;

begin
    dummy := get_premium_users(80000);
end;
show errors;

/