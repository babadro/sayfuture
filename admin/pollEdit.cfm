<cfoutput>Правка голосований.</cfoutput>
<cf_adminMenu>
<cfset poll = entityLoadByPk("poll", URL.CFGRIDKEY)>
<cfoutput>
	#poll.getTitle()#
	
</cfoutput>
<cfif not isDefined("SESSION.poll")>
	<cfset SESSION.poll = structNew()>
	<cfset SESSION.poll.title
</cfif>