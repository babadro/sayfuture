<cfcomponent output="false">
	<cfset this.name = "SayFuture_admin">
	<cfset THIS.sessionmanagement = true>
	<cfset THIS.dataSource="sayfuturedb">
	<cfset this.ormenabled = true>
	<cfset this.ormsettings.cfclocation = ExpandPath( "../orm")>
	<cffunction name="onRequestStart" output="false" returnType="void">
		<cfinclude template="ForceUserLogin.cfm">
	</cffunction>
</cfcomponent>