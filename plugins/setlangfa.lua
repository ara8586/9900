do
local function run(msg, matches, callback, extra)
local hash = 'group:'..msg.to.id
local group_lang = redis:hget(hash,'lang')
if matches[1] == 'تنظیم زبان' and  matches[2] == 'انگلیسی' and is_owner(msg) then 
    
   redis:hdel(hash,'lang')
        return 'group lang set to Engish'
end



if matches[1] == 'تنظیم زبان' and matches[2] == 'فارسی' and is_owner(msg) then
redis:hset(hash,'lang',matches[2])
        return 'زبان گروه تنظیم شد به فارسی'
end
if matches[1] == 'زبان' then
if group_lang then 
return "زبان گروه شما هم اکنون بر روی فارسی قرار دارد"
else
return "Group lang English"
end
end
end
return {
  patterns = {
    "^[!#/](تنظیم زبان) (فارسی)$",
  "^[!#/](تنظیم زبان) (انگلیسی)$",
  "^[!#/](زبان)"
  },
  run = run
}
end

-- by @mr_ahmadix
-- sp @suport_arabot
