<cfcomponent output="false">
	<cfset this.name = "SayFuture_temp">
	<cfset THIS.sessionmanagement = true>
	<cfset THIS.dataSource="sayfuturedb">
	<cfset this.ormenabled = true>
	<cfset this.ormsettings.useDBForMapping = "true">
	<cfset this.ormsettings.cfclocation = ExpandPath( "../ormDBmapping")>
	
</cfcomponent>