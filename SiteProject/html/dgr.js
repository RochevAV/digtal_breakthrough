function AddSvg()
{
document.getElementById('svg').innerHTML='<g id="conectline"><path d="M236,76,235,176" data-n="1" stroke="#000000" stroke-width="1" class="new" fill="none" style="cursor:pointer;marker-end:url(#endTriangle)" data-drawfrom="1" data-drawto="3"></path><path d="M234,226 234,227 121,227" data-n="2" stroke="#000000" stroke-width="1" class="new" fill="none" style="cursor:pointer;marker-end:url(#endTriangle)" data-drawfrom="3" data-drawto="2"></path><path d="M70,74,184,192" data-n="3" stroke="red" stroke-width="3" class="new" fill="none" style="cursor:pointer;marker-end:url(#endTriangle)" data-drawfrom="0" data-drawto="3"></path></g><g id="shape"><rect x="20" y="24" id="n0" name="rect" width="100" height="100" fill="#ffffff" stroke="#000000" stroke-width="1" style="cursor: pointer" class="work" data-fill="#ffffff" data-select="" data-n="0"></rect><rect x="186" y="26" id="n1" name="rect" width="100" height="100" fill="#ffffff" stroke="#000000" stroke-width="1" style="cursor: pointer" class="work" data-fill="#ffffff" data-select="" data-n="0"></rect><rect x="21" y="178" id="n2" name="rect" width="100" height="100" fill="#ffffff" stroke="#000000" stroke-width="1" style="cursor: pointer" class="work" data-fill="#ffffff" data-select="" data-n="0"></rect><rect x="184" y="176" id="n3" name="rect" width="100" height="100" fill="#ffffff" stroke="#000000" stroke-width="1" style="cursor: pointer" class="work" data-fill="#ffffff" data-select="" data-n="0"></rect></g><g id="textnum"><text id="tn0" x="70" y="74" class="draggable" font-size="14" fill="#000000" transform="matrix(1 0 0 1 0 0)">C1</text><text id="tn1" x="236" y="76" class="draggable" font-size="14" fill="#000000" transform="matrix(1 0 0 1 0 0)">C3</text><text id="tn2" x="71" y="228" class="draggable" font-size="14" fill="#000000" transform="matrix(1 0 0 1 0 0)">C2</text><text id="tn3" x="234" y="226" class="draggable" font-size="14" fill="#000000" transform="matrix(1 0 0 1 0 0)">C5</text></g><g id="valconect"><text id="t1" class="draggable" font-size="14" fill="#000000" x="235" y="141" transform="matrix(1 0 0 1 4 6)">4 дн</text><text id="t2" class="draggable" font-size="14" fill="#000000" x="153" y="217" transform="matrix(1 0 0 1 -13 1)">1 дн</text><text id="t3" class="draggable" font-size="14" fill="#000000" x="152" y="140" transform="matrix(1 0 0 1 -6 9)">3 дн</text></g>';
}


google.charts.load('current', {'packages':['timeline']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
        var container = document.getElementById('timeline');
        var chart = new google.visualization.Timeline(container);
        var dataTable = new google.visualization.DataTable();

        dataTable.addColumn({ type: 'string', id: 'President' });
        dataTable.addColumn({ type: 'date', id: 'Start' });
        dataTable.addColumn({ type: 'date', id: 'End' });
        dataTable.addRows([
          [ 'Соглашение №23-П.2018', new Date(2019, 3, 30), new Date(2020, 2, 4) ],
          [ 'Поручение 23-2019',      new Date(2019, 2, 4),  new Date(2020, 2, 4) ],
          [ 'Поручение ВП-2018',  new Date(2018, 2, 4),  new Date(2021, 2, 4) ]]);

        chart.draw(dataTable);
      }


google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawMultSeries);

function drawMultSeries() {
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Дни');
      data.addColumn('number', 'Кол-во поручений');
      data.addColumn('number', 'Бюджет');

      data.addRows([
        ['12.09.2019', 1, .25],
        ['28.09.2019', 2, .5],
        ['04.10.2019', 3, 1],
        ['18.10.2019', 4, 0],
        ['22.10.2019', 5, 2.25],
        ['03.11.2019', 6, 3],
        ['19.12.2019', 7, 0],
        ['12.05.2020', 8, 5.25],
      ]);

      var options = {
        title: 'Загруженность',
        hAxis: {
          title: 'Дни',
        },
        vAxis: {
          title: 'Уровень, ед.'
        }
      };

      var chart = new google.visualization.ColumnChart(
        document.getElementById('chart_div'));

      chart.draw(data, options);
    }

