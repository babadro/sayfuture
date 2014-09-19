<cfcomponent persistent="true" table="statuses">
	<cfproperty name="id" column="status_id" fieldtype="id" genererator="increment" >
	<cfproperty name="nameEng" column="name_eng" ormtype="string" >
	<cfproperty name="nameRus" column="name_rus" ormtype="string" >
	<cfproperty name="note" column="note" ormtype="string" >
	<cfproperty name="forComments" column="for_comments" ormtype="boolean">
	<cfproperty name="forPolls" column="for_polls" ormtype="boolean">
	<cfproperty name="forPosts" column="for_posts" ormtype="boolean" >
</cfcomponent>