<cfcomponent persistent="true" table="poll">

    <cfproperty name="poll_id" column="id" >
    <cfproperty name="date" column="poll_date">
    <cfproperty name="date_gmt" column="poll_date_gmt">
    <cfproperty name="pollTitle" column="title">
    <cfproperty name="pollConditions" column="conditions">
    <cfproperty name="PollHashTag" column="hash_tag">
    <cfproperty name="pollStatus" column="poll_status">
    <cfproperty name="commentStatus" column="comment_status">
    <cfproperty name="PollDeadline" column="deadline">
	<cfproperty name="pollModified" column="modified">
	<cfproperty name="pollModifiedGmt" column="modified_gmt">
	<cfproperty name="pollParent" column="poll_parent">
	<cfproperty name="postParent" column="post_parent">
	
</cfcomponent>