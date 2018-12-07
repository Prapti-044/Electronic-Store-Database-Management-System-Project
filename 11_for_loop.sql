set serveroutput on;
declare 

    num float;
    maxid number;
    prc electronics.price%type;


    counter number := 0;
begin
    num := .1;
    select max(d_id) into maxid from electronics;

    for n in 1..maxid loop
        select price into prc from electronics where d_id=n;
        update electronics set price = prc*(num+1) where d_id = n;
        dbms_output.put_line(prc || ' updated');
    end loop;
    commit;


    loop
        dbms_output.put_line(counter);
        if counter > 5 then exit;
        end if;
        counter := counter + 1;
    end loop;
end;

/