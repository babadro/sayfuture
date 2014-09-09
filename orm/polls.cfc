<cfcomponent persistent="true" table="poll">

    <cfproperty name="poll_id" column="id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="date" column="poll_date" ormtype="char">
    <cfproperty name="date_gmt" column="poll_date_gmt" ormtype="char">
    <cfproperty name="pollTitle" column="title" ormtype="string">
    <cfproperty name="pollConditions" column="conditions" ormtype="text">
    <cfproperty name="PollHashTag" column="hash_tag" ormtype="string">
    <cfproperty name="pollStatus" column="poll_status" ormtype="string">
    <cfproperty name="commentStatus" column="comment_status" ormtype="string">
    <cfproperty name="PollDeadline" column="deadline" ormtype="char">
	<cfproperty name="pollModified" column="modified" ormtype="char">
	<cfproperty name="pollModifiedGmt" column="modified_gmt" ormtype="char">
	<cfproperty name="pollParent" column="poll_parent" ormtype="int" >
	<cfproperty name="postParent" column="post_parent" ormtype="int" >
	
	
	<cfproperty name="pollAuthor" fieldtype="many-to-one" cfc="users" fkcolumn="author">
	<cfproperty name="pollVariants" fieldType="one-to-many" cfc="variants" fkcolumn="poll_id" inverse="true">
	
</cfcomponent>