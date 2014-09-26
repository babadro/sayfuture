<cfcomponent persistent="true" table="bid">

    <cfproperty name="id" column="bid_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="percent" column="percent" ormtype="int">
    <cfproperty name="point" column="point" ormtype="int">
    <cfproperty name="date" column="bdate"  sqltype="datetime">
    <cfproperty name="dateutc" column="bdate_utc" sqltype="datetime">
	
	<cfproperty name="variant_id" fieldtype="many-to-one" cfc="variant" fkcolumn="variant_id">
	<cfproperty name="user_id" fieldtype="many-to-one" cfc="site_user" fkcolumn="user_id">
	
	
	
</cfcomponent>