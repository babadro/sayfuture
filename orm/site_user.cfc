<cfcomponent persistent="true" table="site_user">

    <cfproperty name="id" column="user_id" fieldType="id" generator="increment">
    <cfproperty name="Login" column="login" ormtype="string">
    <cfproperty name="Pass" column="pass" ormtype="string">
    <cfproperty name="Nick" column="nick" ormtype="string">
    <cfproperty name="Email" column="email" ormtype="string">
    <cfproperty name="Registered" column="registered"  sqltype="char(19)">
    <cfproperty name="Status" column="uStatus" ormtype="int">
    <cfproperty name="Rating"column="rating" ormtype="int">
    <cfproperty name="activationKey" column="activation_key" ormtype="string">
	<cfproperty name="displayName" column="display_name" ormtype="string">
	
	<cfproperty name="Polls" fieldType="one-to-many" cfc="poll" fkcolumn="author" inverse="true">
	<cfproperty name="Bids" fieldType="one-to-many" cfc="bid" fkcolumn="user_id" inverse="true">
	
	
	<!---
    <cfproperty name="taxinfo" fieldtype="one-to-one" cfc="taxinfo" mappedBy="contact">

	<cffunction name="getName" returnType="string">
		<cfreturn getLastName() & ", " & getFirstName()>
	</cffunction>
	--->
</cfcomponent>