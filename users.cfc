<cfcomponent persistent="true" table="users">

    <cfproperty name="id" column="user_id" fieldType="id" generator="increment">
    <cfproperty name="userLogin" column="login" ormtype="string">
    <cfproperty name="userPass" column="pass" ormtype="string">
    <cfproperty name="userNick" column="nick" ormtype="string">
    <cfproperty name="userEmail" column="email" ormtype="string">
    <cfproperty name="userRegistered" column="registered" ormtype="char">
    <cfproperty name="userStatus" column="user_status" ormtype="int">
    <cfproperty name="userRating"column="rating" ormtype="int">
    <cfproperty name="activationKey" column="activation_key" ormtype="string">
	<cfproperty name="displayName" column="display_name" ormtype="string">
	
	<cfproperty name="userPolls" fieldType="one-to-many" cfc="polls" fkcolumn="author" inverse="true">
	
	
	
	<!---
    <cfproperty name="taxinfo" fieldtype="one-to-one" cfc="taxinfo" mappedBy="contact">

	<cffunction name="getName" returnType="string">
		<cfreturn getLastName() & ", " & getFirstName()>
	</cffunction>
	--->
</cfcomponent>