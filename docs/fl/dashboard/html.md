# HTML 模式

## HTML - Pipeline 产出（Python、Shell、Java）

Pipeline 产出配置同上。

图表模型选择HTML, 关联相关 Pipeline Job。

HTML 支持自定义样式表(css)，脚本(script)，可引入图片，链接。示例如下：

``` html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>模板</title>
        <meta charset="utf-8" />
        <style>
            a {
                color: red
            }
        </style>
    </head>
    <body>
        <div>test</div>
        <div class="_graph_data">result.prn</div>
        <a href="www.baidu.com">link</a>
        <img width="240px" src="http://5b0988e595225.cdn.sohucs.com/images/20190126/5baae23e310943569c72a68774b223a0.jpeg" />
        <script class="script" type="text/javascript">
            console.log('test1111111')
        </script>
        <script class="script" type="text/javascript">
            console.log('test22222')
        </script>
    </body>
</html>
```

产出如下所示：

![HTML展示](https://wiki.4paradigm.com/download/attachments/63278532/image2019-8-13_21-29-12.png?version=1&modificationDate=1565702952365&api=v2)

## HTML - Pipeline 产出(DAG)

配置如上。

## HTML - API

访问数据方式如上。

## HTML - 扩展 ECharts 支持

HTML配置如下：

``` html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>模板</title>
        <meta charset="utf-8" />
        <style>
            #charts {
                width: 100%;
                height: 100%;
            }
        </style>
        <script class="script" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts.min.js"></script>
    <script class="script" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body>
        <div id="charts"></div>
        <script class="script" type="text/javascript">
            var myChart = echarts.init(document.getElementById('charts'));
            $.get('http://172.27.152.9:3000/HK', function (geoJson) {

    echarts.registerMap('HK', geoJson);

    myChart.setOption({
        title: {
            text: '香港18区人口密度 （2011）',
            subtext: '人口密度数据来自Wikipedia',
            sublink: 'http://zh.wikipedia.org/wiki/%E9%A6%99%E6%B8%AF%E8%A1%8C%E6%94%BF%E5%8D%80%E5%8A%83#cite_note-12'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{b}<br/>{c} (p / km2)'
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            left: 'right',
            top: 'center',
            feature: {
                dataView: {readOnly: false},
                restore: {},
                saveAsImage: {}
            }
        },
        visualMap: {
            min: 800,
            max: 50000,
            text:['High','Low'],
            realtime: false,
            calculable: true,
            inRange: {
                color: ['lightskyblue','yellow', 'orangered']
            }
        },
        series: [
            {
                name: '香港18区人口密度',
                type: 'map',
                mapType: 'HK', // 自定义扩展图表类型
                itemStyle:{
                    normal:{label:{show:true}},
                    emphasis:{label:{show:true}}
                },
                data:[
                    {name: '中西区', value: 20057.34},
                    {name: '湾仔', value: 15477.48},
                    {name: '东区', value: 31686.1},
                    {name: '南区', value: 6992.6},
                    {name: '油尖旺', value: 44045.49},
                    {name: '深水埗', value: 40689.64},
                    {name: '九龙城', value: 37659.78},
                    {name: '黄大仙', value: 45180.97},
                    {name: '观塘', value: 55204.26},
                    {name: '葵青', value: 21900.9},
                    {name: '荃湾', value: 4918.26},
                    {name: '屯门', value: 5881.84},
                    {name: '元朗', value: 4178.01},
                    {name: '北区', value: 2227.92},
                    {name: '大埔', value: 2180.98},
                    {name: '沙田', value: 9172.94},
                    {name: '西贡', value: 3368},
                    {name: '离岛', value: 806.98}
                ],
                // 自定义名称映射
                nameMap: {
                    'Central and Western': '中西区',
                    'Eastern': '东区',
                    'Islands': '离岛',
                    'Kowloon City': '九龙城',
                    'Kwai Tsing': '葵青',
                    'Kwun Tong': '观塘',
                    'North': '北区',
                    'Sai Kung': '西贡',
                    'Sha Tin': '沙田',
                    'Sham Shui Po': '深水埗',
                    'Southern': '南区',
                    'Tai Po': '大埔',
                    'Tsuen Wan': '荃湾',
                    'Tuen Mun': '屯门',
                    'Wan Chai': '湾仔',
                    'Wong Tai Sin': '黄大仙',
                    'Yau Tsim Mong': '油尖旺',
                    'Yuen Long': '元朗'
                }
            }
        ]
    });
});
        </script>
    </body>
</html>
```

展示结果如下：

![HTML扩展](https://wiki.4paradigm.com/download/attachments/63278532/image2019-8-13_21-18-27.png?version=1&modificationDate=1565702308078&api=v2)
