<!---<cfif not isDefined("URL.CFGRIDKEY")><cflocation url="polls.cfm" ></cfif>
---->
<cfset poll = entityLoadByPk("poll", URL.CFGRIDKEY)>
<cfset temp = entityLoadByPk("temp", 1)>
<cfdump var="#temp#" >
<cfoutput>Правка голосований.</cfoutput>

<cf_adminMenu style="float: left">

<cfdump var="#form#">
<cfset pollDateUTC = dateFormat(poll.getDate(), "yyyy-mm-ddThh:mm")>
<cfset pollDeadlineUTC = dateFormat(poll.getDeadLine(), "yyyy-mm-ddThh:mm")>


<cfoutput>
	<form method="post" style="float:left" action="pollEdit.cfm?cfgridkey=#poll.getId()#">
		<p>Заголовок голосования.</p>
		<input name="pollTitle" size="50" value="#poll.getTitle()#" >
		<p>Начало</p>
		<input name="dateGMTPoll_id_#poll.getId()#" type="datetime-local" value="#pollDateUTC#" >
		<p>Конец</p>
		<input name="deadlinePoll_id_#poll.getId()#" type="datetime-local" value="#pollDeadlineUTC#">
		<p>Условия</p>
		<input name="conditionsPoll_id" type="text" value="#poll.getConditions()#">
		
		<br>
		
		<p>Варианты</p>	
		<cfloop array="#poll.getVariants()#" index="variant">
			<input name="nameVariant_id_#variant.getId()#" size="50" value="#variant.getVariantName()#">
			<input name="describeVariant_id#variant.getId()#" size="50" value="#variant.getVariantDescribe()#">
			<a href="bids.cfm?variant=#variant.getId#">Ставки</a><br>
		</cfloop> 
		
		<input name="save" type="submit" >
	</form>
</cfoutput>

<!---
<cfif not isDefined("SESSION.poll")>
	<cfset SESSION.poll = structNew()>
	<cfset SESSION.poll.title = poll.getTitle()>
	<cfset SESSTION.poll.conditions = poll.getConditions()>
	<cfset SESSION.poll.hashTag
</cfif>
---->
