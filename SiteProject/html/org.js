function myReadyHandler()
{
window.location.href = "a.html";
}


google.charts.load('current', {packages:["orgchart"]});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');

        // For each orgchart box, provide the name, manager, and tooltip to show.
        data.addRows([
          [{v:'C1', f:'C1<div style="color:red; font-style:italic">21.06.2019</div>'},'', 'Уровень'],
          [{v:'P1', f:'P1<div style="color:red; font-style:italic">21.06.2019</div>'},'C1', 'Превышение срока'],
          ['C2', 'C1', ''],
          ['P3', 'C1', ''],
          ['C3', 'P1', 'Соглашение о взаимодействии'],
          ['П2', 'C3', ''],
          [{v:'C11', f:'C11<div style="color:red; font-style:italic">13.07.2019</div>'},'P3', 'Превышение срока'],
          ['С12', 'P3', ''],
          ['С22', 'P3', ''],
        ]);

        // Create the chart.
        var chart = new google.visualization.OrgChart(document.getElementById('chart_org'));
        // Draw the chart, setting the allowHtml option to true for the tooltips.
        chart.draw(data, {allowHtml:true});
      }

google.visualization.events.addListener(chart, 'select', myReadyHandler);