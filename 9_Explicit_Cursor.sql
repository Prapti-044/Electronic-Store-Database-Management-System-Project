set serveroutput on;
declare
    d_name electronics.modell%type;
    c_col electronics.colour%type;
cursor cur_name is
select modell, colour into d_name, c_col from electronics where price>20000;
begin
    if not cur_name%isopen
then
    open cur_name;
    
end if;
loop
    fetch cur_name into d_name, c_col;
    exit when cur_name%notfound;
    dbms_output.put_line('Model Name ' || cur_name%rowcount || ': ' || d_name || ', colour: ' || c_col );
end loop;
    close cur_name;
end;
/