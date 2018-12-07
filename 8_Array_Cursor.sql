set serveroutput on 
DECLARE 
   type namesarray IS VARRAY(50) OF customers.c_name%type; 
   names namesarray;
   cursor c1 is
   select c_name 
        from customers;
BEGIN 
    open c1;
    fetch c1 bulk collect into names;
    close c1;
    
   FOR i in names.FIRST .. names.LAST LOOP 
      dbms_output.put_line('Customers: ' || names(i));
   END LOOP; 
END; 
show errors;
/