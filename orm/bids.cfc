<cfcomponent persistent="true" table="bid">

    <cfproperty name="id" column="bid_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="percent" column="percent" ormtype="int">
    <cfproperty name="point" column="point" ormtype="int">
    <cfproperty name="date" column="bdate"  sqltype="char(19)">
    <cfproperty name="dateGMT" column="bdate_gmt" sqltype="char(19)">
	
	<cfproperty name="variant_id" fieldtype="many-to-one" cfc="variants" fkcolumn="variant_id">
	<cfproperty name="user_id" fieldtype="many-to-one" cfc="users" fkcolumn="user_id">
	
	
	
</cfcomponent>