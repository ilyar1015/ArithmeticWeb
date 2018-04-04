var charts = [],
    $containers = $('#trellis td'),
    datasets = [{
        name: '小明',
        data: [3, 6, 1, 2, 6]},
                {
                    name: '小红',
                    data: [5, 6, 4, 2, 1]},
                {
                    name: '小张',
                    data: [2, 6, 5, 2, 3]},
                {
                    name: '小芳',
                    data: [5, 2, 7, 4, 2]}];
$.each(datasets, function(i, dataset) {
    charts.push(new Highcharts.Chart({
        chart: {
            renderTo: $containers[i],
            type: 'bar',
            marginLeft: i === 0 ? 100 : 10
        },
        title: {
            text: dataset.name,
            align: 'left',
            x: i === 0 ? 90 : 0
        },
        credits: {
            enabled: false
        },
        xAxis: {
            categories: ['苹果', '梨', '橙子', '香蕉', '胡萝卜'],
            labels: {
                enabled: i === 0
            }
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: null
            },
            min: 0,
            max: 10
        },
        legend: {
            enabled: false
        },
        series: [dataset]
    }));
});
