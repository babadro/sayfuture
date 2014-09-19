<cfcomponent>
	<cffunction name="editData" access="remote" output="false" >
		<cfargument name="gridaction" >
		<cfargument name="gridrow" >
		<cfargument name="gridchanged" >
		<cfdump var="#gridrow#" format="html" output="C:/ColdFusion11/cfusion/logs/bind.html">
		<cfdump var="#gridaction#" format="html" output="C:/ColdFusion11/cfusion/logs/bind.html">
		<cfdump var="#gridchanged#" format="html" output="C:/ColdFusion11/cfusion/logs/bind.html">
	</cffunction>
</cfcomponent>