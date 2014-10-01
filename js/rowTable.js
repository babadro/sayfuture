function insRow(id)
{
var x=document.getElementById(id).insertRow(-1);
var y=x.insertCell(0);
var z=x.insertCell(1);
y.innerHTML="<p>Заголовок</p><input name='variantTitle' type='text' >"; 
z.innerHTML="<p>Описание</p><textarea name='variantDescribe'></textarea>";
}

function delRow(id)
{
var x=document.getElementById(id).deleteRow(-1);
}