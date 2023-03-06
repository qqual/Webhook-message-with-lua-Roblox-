
--HOW TO SEND A WEBHOOK MESSAGE WITH LUA (ROBLOX) [USE IT WITH EXECUTOR]


local url = "webhook"
local data = {
   ["content"] = "message(no embed, leave this blank if you gonna use embed also can be used with embed)", --you can take out embed by deleting the bottom stuff(where it says EMBEDS)
   ["embeds"] = {
       {
           ["title"] = "title",
           ["description"] = "desc",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da), --color
           ["image"] = {
               ["url"] = "img link"
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef) --sending the message
