<cfset polls = entityLoad("poll")>
<form >
	<cfloop array="#polls#" index="poll" >
		<input type="date" value="2014"/>
	</cfloop>
	
</form>
<cfloop array="#polls#" index="poll" >
	<cfoutput>
		#poll.getDate()#
	</cfoutput>
</cfloop>
