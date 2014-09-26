<cfset temp = entityLoadByPK("temp", 1)>
<cfinclude template="../HTMLfunctions.cfm"> 
<cfset HTMLtempDate = HTMLdateTimeLocal(temp.getDate())>

<cfoutput>#HTMLdateTimeLocal(temp.getDate())#<br></cfoutput>
<cfoutput>#left("2014-09-03 09:11:06.0", len("2014-09-03 09:11:06.0") - 5)#<br></cfoutput>
<cfoutput>
	original value<br>
2014-09-03 09:11:06.0
</cfoutput>
<cfoutput>
	<form>
		<input type="datetime-local" value="#HTMLtempDate#">
	</form>
</cfoutput>