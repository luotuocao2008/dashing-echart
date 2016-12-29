# dashing-echart

#Preview
![](https://github.com/luotuocao2008/ImageCache/blob/master/barechart.png)

#Dependencies
Download [http://echarts.baidu.com/dist/echarts.common.min.js](http://echarts.baidu.com/dist/echarts.common.min.js) and copy it into assets/javascripts.

#Usage
Create the directory widgets/bar_echart and copy this widget's files into that folder.</br>
Add the following code on the desired dashboard:

```html
 <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="barechart" data-view="BarEchart" data-title="EChart test" data-moreinfo="" ></div>
    </li>
```
    
Create your bar echart job barechart_job.rb ：</br>

```coffeescript
SCHEDULER.every '10s', :first_in => 0 do |job|

 labels =["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]

 data = Array.new(labels.length) { rand(40..80) };

 send_event('barechart',{data:data})
end
```
