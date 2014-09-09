<cfcomponent persistent="true" table="users">

    <cfproperty name="id" column="user_id">
    <cfproperty name="userLogin" column="login">
    <cfproperty name="userPass" column="pass">
    <cfproperty name="userNick" column="nick">
    <cfproperty name="userEmail" column="email">
    <cfproperty name="userRegistered" column="registered">
    <cfproperty name="userStatus" column="user_status">
    <cfproperty name="userRating"column="rating">
    <cfproperty name="activationKey" column="activation_key">
	<cfproperty name="displayName" column="display_name">
	
	
	<!---
    <cfproperty name="taxinfo" fieldtype="one-to-one" cfc="taxinfo" mappedBy="contact">

	<cffunction name="getName" returnType="string">
		<cfreturn getLastName() & ", " & getFirstName()>
	</cffunction>
	--->
</cfcomponent>