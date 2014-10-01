<cfoutput>Это страница голосований</cfoutput>
<cf_adminMenu>
<cfset polls = entityLoad("poll")>
<cfset pollsQuery = querynew("id, title, author, date, hashTag, deadLine")>

<cfset i = 1>
<cfloop array="#polls#" index="poll">
	<cfset queryaddrow(pollsQuery)>
	<cfset pollAuthor = poll.getAuthor()>

	<cfset querysetcell(pollsQuery, "id", poll.getId(), i )>
	<cfset querysetcell(pollsQuery, "title", poll.getTitle(), i )>
	<cfset querysetcell(pollsQuery, "author", pollAuthor.getDisplayName(), i)>
	<cfset querysetcell(pollsQuery, "date", dateFormat(poll.getDate()), i)>
	<cfset querysetcell(pollsQuery, "hashTag", poll.getHashTag(), i)>
	<cfset querysetcell(pollsQuery, "deadLine", poll.getDeadline(), i)>
	
	<cfset ++i>
</cfloop>

<cfform name="form01">
	<cfgrid
	format="html"
	insert="yes"
	insertButton="Add Row"
	name="grid01"
	collapsible="true"
	title="Голосования"
	autowidth="yes"
	query="pollsQuery"
	sort="yes">
		<cfgridcolumn name="id" header="id" display="NO" >
		<cfgridcolumn name="title" header="Заголовок" href="pollEdit.cfm" hrefkey="id"/>
		<cfgridcolumn name="author" header="Автор"/>
		<cfgridcolumn name="date" display=true header="Дата" type="date" mask="yy/mm/dd"/>
		<cfgridcolumn name="hashTag" display=true header="Хеш-тег" />
		<cfgridcolumn name="deadLine" display=true header="Истекает" type="date" mask="dd/mm/yyyy"/>
	</cfgrid>
</cfform>
<a href="pollNew.cfm">Создать голосование</a><br>