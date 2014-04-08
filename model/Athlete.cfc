component  accessors="true" persistent="true" 
{
	property name="id" fieldtype="id" ormtype="int"        generator="increment";
	property name="firstName" type="string";
	property name="lastName" type="any";
	property name="number" type="numeric";
	property name="sport" fieldtype="many-to-one" cfc="Sport" fkcolumn="sportID";

}