local datebase = {
"( ͡° ͜ʖ ͡°)\nآنلاینم😎\n➖➖➖➖➖➖➖\nIm ONLINE😎",
""
  }
local function run(msg, matches) 
 send_document(get_receiver(msg), "/root/telediamond/data/sticker.webp", ok_cb, false)
return datebase[math.random(#datebase)]
end
return {
  patterns = {
    "^[/#+×!$]([Oo][Nn][Ll][Ii][Nn][Ee]?)",
    "^ping",
   "^[!#/]([Pp][Ii][Nn][Gg])",
   "^آنلاینی؟",
   "^آنلاینی",
   "^انلاینی؟",
   "^انلاینی",
   "^[!#/](آنلاینی؟)",
   "^[!#/](آنلاینی)",
   "^[!#/](انلاینی؟)",
   "^[!#/](انلاینی)",
  },
  run = run
}

-- by @mr_ahmadix
-- sp @suport_arabot
