set serveroutput on

declare
    f utl_file.file_type;
    line varchar(1000);
    d_id electronics.d_id%type;
    typee electronics.typee%type;
    modell electronics.modell%type;
    colour electronics.colour%type;
   available electronics.available%type;
    price electronics.price%type;
   
begin
    f :=utl_file.fopen('DATABASE', '14_file_raw.csv', 'r');
    if utl_file.is_open(f) then 
        utl_file.get_line(f, line, 1000);
            loop begin
            utl_file.get_line(f, line, 1000);
            if line is null then exit;
            end if;
            d_id:=regexp_substr(line, '[^,]+',1,1);
            typee:=regexp_substr(line, '[^,]+',1,2);
            modell:=regexp_substr(line, '[^,]+',1,3);
            colour:=regexp_substr(line, '[^,]+',1,4);
            available:=regexp_substr(line, '[^,]+',1,5);
            price:=regexp_substr(line, '[^,]+',1,6);
                        dbms_output.put_line(d_id);

          --  insert into electronics values(d_id, typee, modell, colour, available, price);
            commit;
            dbms_output.put_line(line);
            exception when no_data_found then exit;
            end;
            end loop;
    end if;
   
    utl_file.fclose(f);
   
end;
show errors;
/