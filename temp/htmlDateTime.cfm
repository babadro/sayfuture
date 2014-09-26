<cfset temp = entityLoadByPK("temp", 1)>
<cfset tempDate = #dateFormat(temp.getDate(), "yyyy-mm-ddThh:mm")#>

<cfoutput>
	original value<br>
2014-09-03 09:11:06.0
</cfoutput>
<cfoutput>
	<form>
		<input type="datetime-local" value="#tempDate#">
	</form>
</cfoutput>
<cfoutput>
	dateformat<br>
	#dateFormat(temp.getDate(), "yyyy-mm-ddThh:mm")#
</cfoutput>