# dashing-echart

#Preview
![](https://github.com/luotuocao2008/ImageCache/blob/master/barechart.png)

#Dependencies
下载[http://echarts.baidu.com/dist/echarts.common.min.js](http://echarts.baidu.com/dist/echarts.common.min.js) 拷贝到dashing项目的assets/javascripts目录。

#Usage
在dashing项目widgets下创建bar_echart目录，将widgets的文件拷贝bar_echart目录。在dashboard中添加如下代码</br>
 ```html
 <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="barechart" data-view="BarEchart" data-title="EChart test" data-moreinfo="" ></div>
    </li>
```
    
创建barechart的job，barechart.rb 代码如下：</br>

```coffeescript
SCHEDULER.every '10s', :first_in => 0 do |job|

 labels =["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]

 data = Array.new(labels.length) { rand(40..80) };

 send_event('barechart',{data:data})
end
```
