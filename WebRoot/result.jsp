<!DOCTYPE html>
<html>
<head>
	<title>【四则运算】</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/common.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<div class="nav width100">
		<div class="nav_t width1200 ma">
			<P>四则运算</P>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div class="connect width100">
		<div class="conent-t width60 ma ">
			<div class="c-title width60 ma ">
				<h2>学生答题结果统计图</h2>
			</div>
			<div class="c-t width80 ma">
				<div id="container" style="height: 100%"></div>
			</div>
		</div>
	</div>
	<div class="footer width100">
		<div class="footer-t width80 ma">
		<div id="container" style="height: 100%"></div>
	<script type="text/javascript" src="../js/echarts.min.js"></script>
	<script type="text/javascript">
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;
		option = {
		    xAxis: {
		        type: 'category',
		        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [{
		        data: [120, 200, 150, 80, 70, 110, 130],
		        type: 'bar'
		    }]
		};
		if (option && typeof option === "object") {
		    myChart.setOption(option, true);
		}
	</script>	
		</div>
	</div>
</body>
</html>