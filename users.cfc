<cfcomponent persistent="true" table="users">

    <cfproperty name="user_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="login" ormtype="string">
    <cfproperty name="pass" ormtype="string">
    <cfproperty name="nick" ormtype="string">
    <cfproperty name="email" ormtype="string">
    <cfproperty name="registered" ormtype="char">
    <cfproperty name="user_status" ormtype="int">
    <cfproperty name="rating" ormtype="int">
    <cfproperty name="activation_key" ormtype="string">
	<cfproperty name="display_name" ormtype="string">

	<!---
    <cfproperty name="taxinfo" fieldtype="one-to-one" cfc="taxinfo" mappedBy="contact">

	<cffunction name="getName" returnType="string">
		<cfreturn getLastName() & ", " & getFirstName()>
	</cffunction>
	--->
</cfcomponent>