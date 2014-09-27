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
		<input name="dateUTC" type="datetime-local" value="#pollDateUTC#" >
		<p>Конец</p>
		<input name="deadline" type="datetime-local" value="#pollDeadlineUTC#">
		<p>Условия</p>
		<input name="conditions" type="text" value="#poll.getConditions()#">
		<p>Хэш-тег</p>
		<input name="hashTag" type="text" value="#poll.getHashTag()#">
		<p>Комментарии</p>
		<form action="">
		<select name="cars">
		<option value="volvo">Volvo</option>
		<option value="saab">Saab</option>
		<option value="fiat" selected="selected">Fiat</option>
		<option value="audi">Audi</option>
		</select>
		</form>
		<br>
		
		<p>Варианты</p>	
		<table >
			<tr>
				<th>Заголовок</th><th>Описание</th>
			</tr>
		
		<cfloop array="#poll.getVariants()#" index="variant">
			<tr>
				<td>
					<input name="nameVariant_id_#variant.getId()#" size="50" value="#variant.getVariantName()#">
				</td>
				<td>
					<input name="describeVariant_id#variant.getId()#" size="50" value="#variant.getVariantDescribe()#">
					<a href="bids.cfm?variant=#variant.getId#">Ставки</a><br>
				</td>
			</tr>
		</cfloop>
		 
		</table>
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
