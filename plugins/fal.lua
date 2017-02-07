local database = 'http://vip.opload.ir/vipdl/95/1/amirhmz/'
local function run(msg)
	local res = http.request(database.."fal.db")
	local fal = res:split(",") 
	return fal[math.random(#fal)]..'\n➖➖➖➖➖➖➖\n🇮🇷ARA BOT🇮🇷\n🆔Admin:@mr_ahmadix\n🆔Bot Supporter: @suport_arabot\n(👆برای افرادی که ریپورت هستند👆)️\n➖➖➖➖➖➖➖'
end
--Fal Hafez Plugin v1.0 By @AmirDark
return {
	description = "500 Fal Hafez",
	usage = "!joke : send random fal",
	patterns = {
		"^[/#!]fal",
		"^(fal)$",
	    "^[/#!](فال)",
		"^(فال)$",
		},
	run = run
}

-- by @mr_ahmadix
-- sp @suport_arabot
