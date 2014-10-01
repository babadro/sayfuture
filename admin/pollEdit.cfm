<!---<cfif not isDefined("URL.CFGRIDKEY")><cflocation url="polls.cfm" ></cfif>
---->
<html>
<head>
<script type="text/javascript" src="../js/rowTable.js"></script>
</head>
<body>

<cfoutput>Правка голосований.</cfoutput>
<cfdump var="#form#">
<cf_adminMenu style="float: left">
<cfset pollStatuses = entityLoad("statuses", {forPolls = "yes"})>

<cfif isDefined("URL.CFGRIDKEY")>
	<cfset poll = entityLoadByPk("poll", URL.CFGRIDKEY)>	
	<cfset pollDateUTC = dateFormat(poll.getDate(), "yyyy-mm-ddThh:mm")>
	<cfset pollDeadlineUTC = dateFormat(poll.getDeadLine(), "yyyy-mm-ddThh:mm")>
	<cfif structKeyExists(form, "save")>
		<cfoutput >
			#DateFormat(Replace(form.deadline, "T", " "), "yyyy-mm-dd hh:mm:ss")#		
		</cfoutput>
	</cfif>
	
	<cfif structKeyExists(url, "deleteVariant")>
	    <cfset variant = entityLoadByPk("variant", url.deleteVariant)>
	    <cfset entityDelete(variant)>
	    <cfset ormFlush()>
	</cfif>
	<cfif structKeyExists(form, "save")>
		
	    <cfset poll.setTitle(trim(form.title))>
	    <cfset poll.setDateUTC(DateFormat(Replace(trim(form.dateUTC), "T", " "), "yyyy-mm-dd hh:mm:ss"))>
	    <cfset poll.setDeadline(DateFormat(Replace(trim(form.deadline), "T", " "), "yyyy-mm-dd hh:mm:ss"))>
	    <cfset poll.setConditions(trim(form.conditions))>
	    <cfset poll.setHashTag(trim(form.hashTag))>
	    <cfset poll.setCommentStatus(trim(form.commentStatus))>
	    <cfset poll.setStatus(trim(form.status))>
	    <cfset entitySave(poll)>
	
	</cfif>
	
	<cfoutput>
		<form method="post" name="poll" style="float:left" action="#CGI.script_name#?cfgridkey=#poll.getId()#">
			<p>Заголовок голосования.</p>
			<input name="Title" type="text" size="50" value="#poll.getTitle()#" >
			<p>Начало</p>
			<input name="dateUTC" type="datetime-local" value="#pollDateUTC#" >
			<p>Конец</p>
			<input name="deadline" type="datetime-local" value="#pollDeadlineUTC#">
			<p>Условия</p>
			<textarea name="conditions">#poll.getConditions()#</textarea>
			<p>Хэш-тег</p>
			<input name="hashTag" type="text" value="#poll.getHashTag()#">
			<p>Комментарии</p>
			<select name="commentStatus" >
				<option value="on" selected="selected">Включены</option>
				<option value="off">Запрещены</option>
			</select>
			<p>Статус голосования</p>
			<select name="status">
				<cfloop array="#pollStatuses#" index="status" >
					<option value="#status.getId()#">#status.getNameRus()#</option>
				</cfloop>
			</select>
			<br>
			
			<p>Варианты</p>	
			<table id = "variantsTable">
				<tr>
					<th>Заголовок</th><th>Описание</th><th>Ставки</th>
				</tr>
			
			<cfloop array="#poll.getVariants()#" index="variant">
				<tr>
					<td>
						<a href="variantEdit.cfm?variant=#variant.getId()#&cfgridkey=#poll.getId()#">#variant.getTitle()#</a>
					</td>
					<td>
						<a href="variantEdit.cfm?variant=#variant.getId()#&cfgridkey=#poll.getId()#">#variant.getDescribe()#</a>
					</td>
					<td>
						<a href="bids.cfm?variant=#variant.getId()#&cfgridkey=#poll.getId()#">Ставки</a><br>
					</td>
					<td><a href="#CGI.script_name#?cfgridkey=#poll.getId()#&deleteVariant=#variant.getId()#">Удалить вариант</a>
				</tr>
			</cfloop>
			 
			</table>
			<input type="button" onclick="insRow('variantsTable')" value="Insert row">
			<input type="button" onclick="delRow('variantsTable')" value="Delete row"> 
			<a href="variantEdit.cfm?CFGRIDKEY=#URL.CFGRIDKEY#">Добавить еще один вариант</a><br>
			<input name="save" type="submit" value="записать" >
		</form>
	</cfoutput>
</cfif>
<!---
<cfset variants = poll.getVariants()>
<cfdump var="#variant#" >
---->
<!---
<cfif not isDefined("SESSION.poll")>
	<cfset SESSION.poll = structNew()>
	<cfset SESSION.poll.title = poll.getTitle()>
	<cfset SESSTION.poll.conditions = poll.getConditions()>
	<cfset SESSION.poll.hashTag
</cfif>
---->

</body>
</html>