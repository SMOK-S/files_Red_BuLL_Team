
local function ChengUserName(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local Red_BuLL_TeamChengUserName = database:get(bot_id.."Red_BuLL_Team:Cheng:UserName"..data.id_)
if not data.username_ then 
if Red_BuLL_TeamChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..Red_BuLL_TeamChengUserName..']')
database:del(bot_id.."Red_BuLL_Team:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if Red_BuLL_TeamChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو نشروك بقنوات نحراف 🌞😹😹😹',
"هاها شو غيرت معرفك بس لا هددوك 🤞😂😂",
"شسالفه شو غيرت معرفك 😐🌝",
"غير معرفه خمطو بساع بساع \n هاذه معرفه : @"..data.username_.."",
'ها عار مو جان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك', 
"منور معرف جديد : "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."Red_BuLL_Team:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end

end
return {Red_BuLL_Team = ChengUserName}
