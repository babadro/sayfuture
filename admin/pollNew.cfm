<html>
<head>
<script type="text/javascript" src="../js/rowTable.js"></script>
<title>Новое голосование.</title>
</head>
<body>

<cfoutput>Создание нового голосования</cfoutput>
<cf_adminMenu style="float: left">

<cfset pollStatuses = entityLoad("statuses", {forPolls = "yes"})>
<cfset poll = entityNew("poll")>

<cfoutput>
	<form method="post" name="poll" style="float:left" action="pollEdit.cfm">
		<p>Заголовок голосования.</p>
		<input name="Title" type="text" size="50" >
		<p>Начало</p>
		<input name="dateUTC" type="datetime-local">
		<p>Конец</p>
		<input name="deadline" type="datetime-local">
		<p>Условия</p>
		<textarea name="conditions"></textarea>
		<p>Хэш-тег</p>
		<input name="hashTag" type="text">
		<p>Комментарии</p>
		<select name="commentStatus">
			<option value="on" selected="selected">Включены</option>
			<option value="off">Запрещены</option>
		</select>
		<p>Статус голосования</p>
		<select name="status">
			<cfloop array="#pollStatuses#" index="status" >
				<option value="#status.getId()#">#status.getNameRus()#</option>
			</cfloop>
		</select>
		<br>
		
		<p>Варианты</p>	
		<table id = "variantsTable">
			<ul>
				<li>
				<tr>	
					<td><p>Заголовок</p><input name="variantTitle" type="text" ></td>
					<td><p>Описание</p><textarea name="variantDescribe"></textarea></td>
				</tr>
				</li>
			</ul>
		</table>
		
		<input type="button" onclick="insRow('variantsTable')" value="Добавить строку">
		<input type="button" onclick="delRow('variantsTable')" value="Удалить строку"> 
		<input name="save" type="submit" value="записать" >
	</form>
</cfoutput>









</body>
</html>