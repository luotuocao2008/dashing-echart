
SCHEDULER.every '10s', :first_in => 0 do |job|

 labels =["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]

 data = Array.new(labels.length) { rand(40..80) };
   
 send_event('barechart',{data:data})
end
