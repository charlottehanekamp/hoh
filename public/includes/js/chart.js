var chart = AmCharts.makeChart("chartdiv",
{
    "type": "serial",
	"theme": "light",
    "dataProvider": [{
        "name": "Arrows Shot",
        "points": 35654,
        "color": "#7F8DA9"
    }, {
        "name": "Arrows Hit",
        "points": 65456,
        "color": "#FEC514"
    }, {
        "name": "Total points",
        "points": 45724,
        "color": "#DB4C3C"
    }],
    "valueAxes": [{
        "maximum": 80000,
        "minimum": 0,
        "axisAlpha": 0,
        "dashLength": 4,
        "position": "left"
    }],
    "startDuration": 1,
    "graphs": [{
        "balloonText": "<span style='font-size:13px;'>[[category]]: <b>[[value]]</b></span>",
        "bulletOffset": 16,
        "bulletSize": 34,
        "colorField": "color",
        "cornerRadiusTop": 8,
        "customBulletField": "bullet",
        "fillAlphas": 0.8,
        "lineAlpha": 0,
        "type": "column",
        "valueField": "points"
    }],
    "marginTop": 0,
    "marginRight": 0,
    "marginLeft": 0,
    "marginBottom": 0,
    "autoMargins": false,
    "categoryField": "name",
    "categoryAxis": {
        "axisAlpha": 0,
        "gridAlpha": 0,
        "inside": true,
        "tickLength": 0
    },
    "export": {
    	"enabled": true
     }
});
