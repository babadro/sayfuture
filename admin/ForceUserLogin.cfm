<cflogin>
	<cfif not (isDefined("FORM.userLogin") and isDefined("FORM.userPassword"))>
		<cfinclude template="UserLoginForm.cfm">
		<cfabort>
	<cfelse>
		<cfset user = entityLoad("users", {Login=FORM.userLogin, Pass=hash(FORM.userPassword, "SHA-512")})>
		
		
		<cfif ArrayLen(user) eq 1>
			<cfloginuser name="#user[1].getLogin#" password="#FORM.userPassword#" roles="#user[1].getStatus#">
		<cfelse>
			Password and username are not recognized. Try again.
			<cfinclude template="UserLoginForm.cfm">
			<cfabort>
		</cfif>
	</cfif>
	

</cflogin>