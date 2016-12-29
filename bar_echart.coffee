class Dashing.BarEchart extends Dashing.Widget

 ready: ->
    @echartTest = $(@node).find('.echarts-test')[0]
    @myechart = echarts.init(@echartTest)  
    option ={
        title: {
            text: 'ECharts 入门示例'
        },
        tooltip: {},
        legend: {
           data:['销量']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar'	,
            data: [5, 20, 36, 10, 10, 20]
        }]
    }	
    @myechart.setOption option

 onData: (data) ->
  option ={
        title: {
            text: 'ECharts 测试'
        },
        tooltip: {},
        legend: {
           data:['销量']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar' ,
            data: data.data
        }]
    }
  @echartTest = $(@node).find('.echarts-test')[0]
  @myechart = echarts.init(@echartTest)  
  @myechart.setOption option
