var mas_xo=['Министерство образования','Министерство здравооохранения'];

function AddTag()
{
var btn=document.createElement('div');btn.id='dfeinp';
btn.innerHTML='<div class="input-group"><SELECT name="move" size="1" class="form-control"><option value="0">Министерство образования</option><option value="1">Министерство здравооохранения</option><option value="1">МВД УР</option></SELECT><span class="input-group-addon"></span><SELECT name="move" size="1" class="form-control"><option value="0">Куратор</option><option value="1">Представитель</option><option value="1">Ответственный</option></SELECT><span class="input-group-addon">ФИО</span><input type="text" class="form-control" id="date1" name="date1" placeholder="Алексеев Иван Сергеевич" value=""></div>';
document.getElementById('tag').appendChild(btn);
}
function AddParam()
{
var btn=document.createElement('div');btn.id='dfeinp';
btn.innerHTML='<div class="input-group"><span class="input-group-addon">Условие</span><input type="text" class="form-control" id="date1" name="date1" value="" placeholder="Например, наличие инфраструктуры"><span class="input-group-addon"><input class="form-control" type="checkbox" name="f32" value="1"></span><span class="input-group-addon">Обязательность</span></div>';
document.getElementById('listparam').appendChild(btn);
}
function selSort()
{
if(document.getElementById("sort").options.selectedIndex==0)$('.all').each( function(i){$(this).attr('style','display:block');});
if(document.getElementById("sort").options.selectedIndex==1)document.getElementById("card").innerHTML='';
}
function clkFiltr(vid)
{
$('.all').each( function(i){$(this).attr('style','display:block');});
if(vid==0)$('.ved').each( function(i){$(this).attr('style','display:none');});
if(vid==1)$('.reg').each( function(i){$(this).attr('style','display:none');});
if(vid==2)$('.obl').each( function(i){$(this).attr('style','display:none');});
}

$('.datepicker').datepicker({
  hideIfNoPrevNext : 'true',
  dateFormat : 'dd.mm.yy',
  dayNamesMin : [ 'Вс','Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
  monthNames : ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
  prevText : '<<',
  nextText : '>>'
});
$('#newsave').click(function(){
	var btn=document.createElement('tr');
	var t=document.getElementById('newcr').value;
	var s='<td>'+t+'</td><td></td><td>Министерство образования</td><td><span class="input-mobil"><input type="checkbox" name="f32" value="1" checked></span> Да</td><td><span class="input-mobil"><input type="checkbox" name="f32" value="1"></span> Да</td>';
	btn.innerHTML=s;
	document.getElementById('listcr').appendChild(btn);
	$('#myModalAdd').modal('hide');
    });
$('#actsave').click(function(){
	var btn=document.createElement('tr');
	var s='<td>'+document.getElementById('newpn').value+'</td><td>'+document.getElementById('newpname').value+'</td><td>'+document.getElementById('newdate').value+'</td><td>'+document.getElementById('newtime').value+'</td>';
	btn.innerHTML=s;
	document.getElementById('tactp').appendChild(btn);
	$('#myModalActp').modal('hide');
    });

$('#xo').autocomplete({source:mas_xo,select: function(event, ui) {document.getElementById('xoid').value=$.inArray(ui.item.value,$('#xo').autocomplete('option','source'));}});