<cfcomponent persistent="true" table="variant">

    <cfproperty name="id" column="variant_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="variantName" column="vname" ormtype="string">
    <cfproperty name="variantDescribe" column="vdescribe" ormtype="text">
    <cfproperty name="totalBids" column="total_bid" ormtype="int">
    
	
	
	<cfproperty name="poll_id" fieldtype="many-to-one" cfc="polls" fkcolumn="poll_id">
	
	<cfproperty name="variantBids" fieldType="one-to-many" cfc="bids" fkcolumn="bid_id" inverse="true">
</cfcomponent>