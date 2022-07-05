"use strict";
layui.use(["element","okUtils", "table", "countUp"], function () {
    var countUp = layui.countUp;
    var table = layui.table;
    var okUtils = layui.okUtils;
    var $ = layui.jquery;

    //总体统计
    function statText() {
        okUtils.ajaxCloud({
            url:"/sys/interface/query",
            param:{'type':'indexStatistics'},
            async:true,
            success : function(result) {
                $("#orgNumber").html(result.msg[0].orgNumber);
                $("#parkNumber").html(result.msg[0].parkNumber);
                $("#carNumber").html(result.msg[0].carNumber);
                $("#cost").html(result.msg[0].cost);
            }
        });
    }
    //订单支付类型
    function payType(){
        var myChart = echarts.init($("#payType")[0], "theme");
        var option = {
            color: ['#19be6b'],
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            legend: {
                data:['订单数']
            },
            xAxis: [
                {
                    type: 'category',
                    data: [],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: '订单数',
                    type: 'bar',
                    barWidth: '50%',
                    data: [200, 50, 150]
                }
            ]
        };
        okUtils.ajaxCloud({
            url:"/sys/interface/query",
            param:{'type':'payTypeStatistics'},
            async:true,
            success : function(result) {
                option.series[0].data = result.msg;
                var array = [];
                result.msg.forEach(function(entity){
                    array.push(entity.name);
                })
                option.xAxis[0].data = array;
                myChart.setOption(option);
                okUtils.echartsResize([myChart]);
            }
        });
    }

    //最近七日支付订单
    function lately7Day() {
        var userSourceOption = {
            title: {text: ""},
            tooltip: {trigger: "axis", axisPointer: {type: "cross", label: {backgroundColor: "#6a7985"}}},
            legend: {data: ["支付宝", "微信"]},
            toolbox: {feature: {saveAsImage: {}}},
            grid: {left: "3%", right: "4%", bottom: "3%", containLabel: true},
            xAxis: [{type: "category", boundaryGap: false, data: ["周一", "周二", "周三", "周四", "周五", "周六", "周日"]}],
            yAxis: [{type: "value",minInterval: 1}],
            series: [
                {name: "支付宝", type: "line", stack: "总量", areaStyle: {}, data: [120, 132, 101, 134, 90, 230, 210]},
                {name: "微信", type: "line", stack: "总量", areaStyle: {}, data: [220, 182, 191, 234, 290, 330, 310]},
            ]
        };
        var myDate = new Date();
        var year = myDate.getFullYear();
        myDate.setDate(myDate.getDate() - 7);
        var dateArray = [];
        var flag = 1;
        for (var i = 0; i < 7; i++) {
            var day = myDate.getDate();
            day = day>9?day:"0"+day;
            dateArray.push(year +"-"+(myDate.getMonth()+1)+"-"+day);
            myDate.setDate(myDate.getDate() + flag);
        }
        userSourceOption.xAxis[0].data = dateArray;
        okUtils.ajaxCloud({
            url:"/sys/interface/query",
            param:{'type':'ali7Pay'},
            async:false,
            success : function(result) {
                var ali7Pay = result.msg;
                var ali7Data = [];
                for(var i=0;i<7;i++){
                   var data = 0.00;
                   for(var j=0;j<ali7Pay.length;j++){
                        if(dateArray[i]==ali7Pay[j][0]){
                            data = ali7Pay[j][1]
                        }
                   }
                   ali7Data[i] = data;
                }
                userSourceOption.series[0].data = ali7Data;
            }
        });
        okUtils.ajaxCloud({
            url:"/sys/interface/query",
            param:{'type':'wx7Pay'},
            async:false,
            success : function(result) {
                var wx7Pay = result.msg;
                var wx7Data = [];
                for(var i=0;i<7;i++){
                   var data = 0.00;
                   for(var j=0;j<wx7Pay.length;j++){
                        if(dateArray[i]==wx7Pay[j][0]){
                            data = wx7Pay[j][1]
                        }
                   }
                   wx7Data[i] = data;
                }
                userSourceOption.series[1].data = wx7Data;
                var userSourceMap = echarts.init($("#lately7Day")[0], "theme");
                userSourceMap.setOption(userSourceOption);
                okUtils.echartsResize([userSourceMap]);
            }
        });
    }
    statText();
    payType();
    lately7Day();
});


