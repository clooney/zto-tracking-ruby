#!/usr/bin/ruby -w
#coding=utf-8
require File.dirname(__FILE__) + '/trackingmore.rb'

#1 List all carriers(列出所有运输商)
=begin
url="http://api.trackingmore.com/v2/carriers/"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#2 detect a carriers by tracking number(识别运输商)
=begin
url="http://api.trackingmore.com/v2/carriers/detect"
postData = {"tracking_number":"260868801891"}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#3 create a tracking number(新建一个单号)

url="http://api.trackingmore.com/v2/trackings/post"
postData = {"tracking_number":"260868801891","carrier_code":"zto","title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","order_create_time":"2018/09/08 16:51","destination_code":"US","tracking_ship_date":"20180908","tracking_postal_code":"12201","lang":"en","logistics_channel":"API TEST"}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"


#4 List all trackings(列出所有跟踪)
=begin
url="http://api.trackingmore.com/v2/trackings/get?page=1&limit=100&created_at_min=&created_at_max=&update_time_min=&update_time_max=&order_created_time_min=&order_created_time_max=&numbers=260868801891&orders=&lang=en"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#5 Get tracking results of a single tracking.
=begin
url="http://api.trackingmore.com/v2/trackings/zto/260868801891/en"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#6 create muti tracking number(创建多个订单号)
=begin
url="http://api.trackingmore.com/v2/trackings/batch"
postData = [
   {"tracking_number": "260868801891","carrier_code":"zto","title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","order_create_time":"2018/09/08 16:51","destination_code":"US","tracking_ship_date":"20180908","tracking_postal_code":"12201","lang":"en","logistics_channel":"API TEST"},
   {"tracking_number": "LZ448865302CN","carrier_code":"china-ems","title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","order_create_time":"2018/09/08 16:51","destination_code":"US","tracking_ship_date":"20180908","tracking_postal_code":"12201","lang":"en","logistics_channel":"API TEST"}
]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#7 Update Tracking item(更新一个单号)
=begin
url="http://api.trackingmore.com/v2/trackings/zto/260868801891"
postData = {"title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","logistics_channel":"API TEST"}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"PUT")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#8 Delete a tracking item(删除一个单号)
=begin
url="http://api.trackingmore.com/v2/trackings/zto/260868801891"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"DELETE")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#9 Get realtime tracking results of a single tracking(获取单次跟踪的实时跟踪结果)
=begin
url="http://api.trackingmore.com/v2/trackings/realtime"
postData = {"tracking_number": "260868801891","carrier_code":"zto","destination_code": "US","tracking_ship_date":"20180908","tracking_postal_code":"12201","specialNumberDestination":"UK","order":"#123","order_create_time":"2018/09/08 16:51","lang":"en"}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#10 Modify courier code(修改运输商)
=begin
url="http://api.trackingmore.com/v2/trackings/update"
postData = {"tracking_number":"260868801891","carrier_code":"zto","update_carrier_code":"china-ems"}
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#11 Get user info(获取个人信息)
=begin
url="http://api.trackingmore.com/v2/trackings/getuserinfo"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#12 Get status number(获取单号状态)
=begin
url="http://api.trackingmore.com/v2/trackings/getstatusnumber"
postData = ""
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"GET")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#13 Set number not update(设置单号不再更新)
=begin
url="http://api.trackingmore.com/v2/trackings/notupdate"
postData = [
   {"tracking_number":"260868801891","carrier_code":"zto"},
   {"tracking_number":"LZ448865302CN","carrier_code":"china-ems"}
]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#14 Get remote iterm results(偏远)
=begin
url="http://api.trackingmore.com/v2/trackings/remote"
postData = [{"country":"CN","postcode":"400422"},{"country":"CN","postcode":"412000"}]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#15 Get cost time iterm results(花费时间)
=begin
url="http://api.trackingmore.com/v2/trackings/costtime"
postData = [{"carrier_code":"zto","destination":"US","original":"CN"},{"carrier_code":"china-ems","destination":"US","original":"CN"}]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#16 Delete multiple tracking item(批量删除)
=begin
url="http://api.trackingmore.com/v2/trackings/delete"
postData = [{"tracking_number":"260868801891","carrier_code":"zto"},{"tracking_number":"LZ448865302CN","carrier_code":"china-ems"}]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end

#17 Update multiple Tracking item(批量更新)
=begin
url="http://api.trackingmore.com/v2/trackings/updatemore"
postData =[{"tracking_number":"260868801891","carrier_code":"zto","title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","destination_code":"US","status":"7","logistics_channel":"API TEST"},{"tracking_number":"260868801891","carrier_code":"china-ems","title":"4PX page","customer_name":"trackingmore user","customer_email":"service@trackingmore.com","order_id":"#123","destination_code":"US","status":"7","logistics_channel":"API TEST"}]
tracker = Trackingmore.new()
res = tracker.tracker(url,postData,"POST")
puts "Response #{res.code} #{res.message}: #{res.body}"
=end