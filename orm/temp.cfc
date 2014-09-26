<cfcomponent persistent="true" table="temp">
	<cfproperty name="id" column="temp_id" fieldtype="id" generator="increment" ormtype="int">
	<cfproperty name="date" column="tdate" ormtype="timestamp">

</cfcomponent>