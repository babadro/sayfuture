<!---
Name:        layout1.cfm
Author:      Raymond Camden (ray@camdenfamily.com)
Description: Basic layout
--->

<cflayout type="border">

    <cflayoutarea position="left" size="250">
    <cfmenu type="vertical">
		<cfmenuitem display="Опросы" href="polls">
			
		</cfmenuitem>
		
		<cfmenuitem display="Посты" href="admin/postedit.cfm">
			
		</cfmenuitem>
		
		<cfmenuitem display="Комментарии" href="admin/comments.cfm">
			
		</cfmenuitem>
		
		<cfmenuitem display="Пользователи" href="admin/users.cfm">
			
		</cfmenuitem>
		
		<cfmenuitem display="Настройки" href="admin/options.cfm">
			
		</cfmenuitem>
		
		
		
		
	</cfmenu>
    </cflayoutarea>
    
    <cflayoutarea position="center">
    <p>
    This is the main body of the page.
    </p>
    </cflayoutarea>
    
</cflayout>
