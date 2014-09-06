<cflogin>
	<cfif not (isDefined("FORM.userLogin") and isDefined("FORM.userPassword"))>
		<cfinclude template="UserLoginForm.cfm">
		<cfabort>
	<cfelse>
		<cfset user = entityLoad("users", {userLogin=FORM.userLogin, userPass=hash(FORM.userPassword, "SHA-512")})>
		
		
		<cfif ArrayLen(user) eq 1>
			<cfloginuser name="#user[1].getUserLogin#" password="#FORM.userPassword#" roles="#user[1].getUserStatus#">
		<cfelse>
			Password and username are not recognized. Try again.
			<cfinclude template="UserLoginForm.cfm">
			<cfabort>
		</cfif>
	</cfif>
	

</cflogin>