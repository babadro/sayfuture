<cfif not isDefined("URL.CFGRIDKEY")><cflocation url="polls.cfm" ></cfif>

<cfset SESSION.poll = entityLoadByPk("poll", URL.CFGRIDKEY)>

<cfoutput>Правка голосований.</cfoutput>

<cf_adminMenu style="float: left">

<cfdump var="#form#" >
<cfif structKeyExists(form, "save")>
	<cfloop array="variantsGrid.id" index="id" >
		<cfset variant = entityLoadByPk("variant", id)>
		<cfset variant>
	</cfloop>
</cfif>
<cfform action="#CGI.script_name#?cfgridkey=#SESSION.poll.getId()#" style="float: left">
	<p>Заголовок голосования.</p>
	<cfinput name="pollTitle" size="50" value="#SESSION.poll.getTitle()#" ><br>
	<p>Варианты</p>
	<cfgrid format="html" name="variantsGrid" selectmode="edit" >
		<cfgridcolumn name="id" display="false">
		<cfgridcolumn name="name">
		<cfgridcolumn name="describe">
		<cfloop array="#SESSION.poll.getVariants()#" index="variant">
			<cfgridrow data="#variant.getId()#, #variant.getVariantName()#, #variant.getVariantDescribe()#" >
		</cfloop>
	</cfgrid>
	<!---	
	<cfloop array="#SESSION.poll.getVariants()#" index="variant">
		<cfinput name="nameVariant_id_#variant.getId()#" size="50" value="#variant.getVariantName()#">
		<cfinput name="describeVariant_id#variant.getId()#" size="50" value="#variant.getVariantDescribe()#"><br>
	</cfloop> 
	---->
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
