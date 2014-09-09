
<cfset users = entityLoad("users", {})>
<table border="1">
    <tr>
	   <th>Film</th><th>Release</th><th>Expenses</th>
	</tr>
	<cfloop index="user" array="#users#">
	<cfoutput>
	<tr>
	   <td>#user.getUserLogin()#<br/><i>#user.getUserEmail()#</i></td>
	   <td>#user.getUserNick()#</td>
	   <td>
		<cfset polls = user.getUserPolls()>
		<cfloop index="poll" array="#polls#">
			#poll.getPollTitle()#<br/>
		</cfloop>   
	   </td>
	</tr>
    </cfoutput>
	</cfloop>
</table>