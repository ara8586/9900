function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📅 امروز '..jdat.FAdate..' میباشد.\n    ----\n🕒TIME '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n➖➖➖➖➖➖➖\n🇮🇷ARA BOT🇮🇷\n🆔Admin:@mr_ahmadix\n🆔Bot Supporter: @suport_arabot\n(👆برای افرادی که ریپورت هستند👆)️\n➖➖➖➖➖➖➖'
return text
end
return {
  patterns = {
  "^[/#!]([Tt][iI][Mm][Ee])$",
  "^[/#!](زمان)$"
  }, 
run = run 
}

-- by @mr_ahmadix
-- sp @suport_arabot
