<cfset tabledb = entityLoad("poll")>
<cfoutput>#tabledb[2].getDate()#</cfoutput><br>
<cfoutput>#now()#</cfoutput>


