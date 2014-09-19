<cfif not isDefined("URL.CFGRIDKEY")><cflocation url="polls.cfm" ></cfif>

<cfset SESSION.poll = entityLoadByPk("poll", URL.CFGRIDKEY)>

<cfoutput>Правка голосований.</cfoutput>

<cf_adminMenu style="float: left">

<cfdump var="#form#" >

<cfform action="#CGI.script_name#?cfgridkey=#SESSION.poll.getId()#" style="float: left">
	<p>Заголовок голосования.</p>
	<cfinput name="pollTitle" size="50" value="#SESSION.poll.getTitle()#" ><br>
	<p>Названия вариантов</p>
	<cfloop array="#SESSION.poll.getVariants()#" index="variant">
		<cfinput name="variantName & #variant.getId()#" size="50" value="#variant.getVariantName()#"><br>
	</cfloop> 
	<cfinput name="save" type="submit" >
</cfform>

<!---
<cfif not isDefined("SESSION.poll")>
	<cfset SESSION.poll = structNew()>
	<cfset SESSION.poll.title = poll.getTitle()>
	<cfset SESSTION.poll.conditions = poll.getConditions()>
	<cfset SESSION.poll.hashTag
</cfif>
---->
