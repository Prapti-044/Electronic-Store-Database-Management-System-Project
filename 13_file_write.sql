set serveroutput on
declare
    f utl_file.file_type;
    cursor c is select * from electronics;
     
begin
    f :=utl_file.fopen('DATABASE', '15_file_updated.csv', 'w');
    utl_file.put(f, 'ID' || ',' ||  'TYPES' || ',' || 'MODEL' || ',' || 'COLOUR' || ',' || 'AVAIL' || ',' || 'PRICE');
    utl_file.new_line(f);
    for c_record in c
    
        loop
             utl_file.put(f, c_record.d_id || ',' ||  c_record.typee || ',' || c_record.modell || ',' || c_record.colour || ',' || c_record.available || ',' || c_record.price);
             utl_file.new_line(f);
             end loop;
    
    utl_file.fclose(f);
   end;
    /