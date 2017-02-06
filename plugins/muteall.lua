do
local function pre_process(msg)
 local hash = 'muteall:'..msg.to.id
  if redis:get(hash) and msg.to.type == 'channel' and not is_momod(msg)  then
   delete_msg(msg.id, ok_cb, false)
       end
    return msg
 end
 
local function run(msg, matches)
 if matches[1] == 'muteall' and is_momod(msg) or matches[1] =='قفل همه' and is_momod(msg) then
       local hash = 'muteall:'..msg.to.id
       if not matches[2] then
              redis:set(hash, true)
             return "ارسال در گروه ممنوع شد\n➖➖➖➖➖➖➖\nmute all has been enabled"
 else
-- by @mr_ahmadix
local hour = string.gsub(matches[2], 'h', '')
 local num1 = tonumber(hour) * 3600
local minutes = string.gsub(matches[3], 'm', '')
 local num2 = tonumber(minutes) * 60
local second = string.gsub(matches[4], 's', '')
 local num3 = tonumber(second) 
local num4 = tonumber(num1 + num2 + num3)
redis:setex(hash, num4, true)
 return "گروه به مدت\n⏺"..matches[2].."ساعت\n⏺"..matches[3].."دقیقه \n⏺"..matches[4].."ثانیه\nقفل میباشد\n➖➖➖➖➖➖➖\n🇮🇷ARA BOT🇮🇷\n🆔Admin:@mr_ahmadix\n🆔Bot Supporter: @suport_arabot\n(👆برای افرادی که ریپورت هستند👆)\n➖➖➖➖➖➖➖"
 end
 end
if matches[1] == 'unmuteall' and is_momod(msg) or matches[1] =='بازکردن همه' and is_momod(msg) then
               local hash = 'muteall:'..msg.to.id
        redis:del(hash)
          return "ارسال در گروه آزاد شد\n➖➖➖➖➖➖➖\nmute all has been disabled"
  end
end
return {
   patterns = {
      '^[/!#](muteall)$',
      '^[/!#](unmuteall)$',
   '^[/!#](muteall) (.*) (.*) (.*)$',
      '^[/!#](قفل همه)$',
      '^[/!#](بازکردن همه)$',
   '^[/!#](قفل همه) (.*) (.*) (.*)$',
 },
run = run,
  pre_process = pre_process
}
end
-- by @mr_ahmadix
-- sp @suport_arabot
