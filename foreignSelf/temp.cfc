<cfcomponent persistent="true" table="temp">
	<cfproperty name="temp_id" column="temp_id" ormtype="int" >
	
	<cfproperty name="tempChild" fieldtype="one-to-many" cfc="temp" fkcolumn="parent_id" inverse="true" >
	<cfproperty name="tempParent" fieldtype="many-to-one" cfc="temp" fkcolumn="parent_id" >

</cfcomponent>