<cffunction name="HTMLdateTimeLocal" 
description="convert string from mysql datetime format to string for default value html form, 
input tag, type=datetime-local"
output="false"
returntype="string">
	<cfargument name="mysqlDateTimeString" required="true" >
	
	<cfset insertT = Replace(mysqlDateTimeString, " ", "T")>
	<cfset lenInsertT = len(insertT)>
	<cfset result = left(insertT, lenInsertT - 5)>
	
	<cfreturn result>
</cffunction>