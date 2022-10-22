DECLARE
	r number;
	area number(7, 2);
	pi constant number := 3.14;
BEGIN
	r := &r;
	area := pi*r*r;
	dbms_output.put_line('Area : ' || area);
	INSERT INTO circlearea VALUES(r, area);
	r := 3;
	WHILE	r<=7
	LOOP
		area := pi*r*r;
		dbms_output.put_line('Area for radius ' || r || ' : ' || area);
		INSERT INTO circlearea VALUES(r, area);
		r := r+1;
	END LOOP
END;
/