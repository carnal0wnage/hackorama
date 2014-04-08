/* ** SPORT ** */
component  accessors="true" persistent="true"     {
	property name="id" fieldtype="id" generator="increment"      ;
	property name="name" type="string";
	property name="description" type="string";
	property name="athletes" fieldtype="one-to-many" cfc="Athlete" fkcolumn="sportID" inverse="true";

}