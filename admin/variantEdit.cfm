
<cfoutput>Правка вариантов.</cfoutput>

<cf_adminMenu style="float: left">


<cfif isDefined("URL.variant") and (URL.variant neq "")>
	<cfset variant = entityLoadByPK("variant", URL.variant)>
	<cfif structKeyExists(form, "save")>
	    <cfset variant.setTitle(trim(form.title))>
	    <cfset variant.setDescribe(trim(form.describe))>
    	<cfset entitySave(variant)>
	</cfif>
<cfelse>
	<cfset variant = entityNew("variant")>
	<cfset poll = entityLoadByPk("poll", URL.CFGRIDKEY)>
	<cfif structKeyExists(form, "save") and len(form.title)>
	    <cfset variant.setTitle(trim(form.title))>
	    <cfset variant.setDescribe(trim(form.describe))>
	    <cfset variant.setPoll_id(poll)>
	    <cfset entitySave(variant)>
	    <cfset poll.addVariants(variant)>
	    <cfset entitySave(poll)>
	</cfif>
</cfif>


<cfoutput>	
	<form method="post" name="variant" style="float:left" action="#CGI.script_name#?variant=#variant.getId()#&cfgridkey=#URL.cfgridkey#">
		<p>Заголовок варианта</p>
		<input name="Title" size="50" type="text"  value="#variant.getTitle()#" >
		<p>Описание</p>
		<textarea name="describe">#variant.getDescribe()#</textarea>
		<br>
		<input type="submit" name="save" value="записать">
	</form>
	<a href="pollEdit.cfm?cfgridkey=#URL.cfgridkey#">Вернуться к голосованию</a>
</cfoutput>	