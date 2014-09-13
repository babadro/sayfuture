<cfcomponent persistent="true" table="setting">
	<cfproperty name="id" column="setting_id" fieldtype="id" generator="increment" >
	
	<cfproperty name="name" column="sname" ormtype="string" >
	<cfproperty name="value" column="svalue" ormtype="text">
	<cfproperty name="autoload" column="autoload" ormtype="yes_no">

</cfcomponent>