set serveroutput on;

DECLARE
    nm customers.c_name%type;
    cid customers.c_id%type;
    did electronics.d_id%type;
    modl electronics.modell%type;

BEGIN
    nm := 'moni';
    select c_id into cid from customers where c_name= nm;
    select d_id into did from transactions where c_id=cid;
    select modell into modl from electronics where d_id= did;

    dbms_output.put_line(nm||' bought '|| modl );
    
end;
/