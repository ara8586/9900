local numbers = {}
numbers['ا'] = 1
numbers['ب'] = 2
numbers['ج'] = 3
numbers['د'] = 4
numbers['ه'] = 5
numbers['و'] = 6
numbers['ز'] = 7
numbers['ح'] = 8
numbers['ط'] = 9
numbers['ی'] = 10
numbers['ک'] = 20
numbers['ل'] = 30
numbers['م'] = 40
numbers['ن'] = 50
numbers['س'] = 60
numbers['ع'] = 70
numbers['ف'] = 80
numbers['ص'] = 90
numbers['ق'] = 100
numbers['ر'] = 200
numbers['ش'] = 300
numbers['ت'] = 400
numbers['ث'] = 500
numbers['خ'] = 600
numbers['ذ'] = 700
numbers['ض'] = 800
numbers['ظ'] = 900
numbers['غ'] = 1000
local function convert(text)
    local text = text:gsub('ژ','ز')
    local text = text:gsub('گ','ک')
    local text = text:gsub('چ','ج')
    local text = text:gsub('پ','ب')
    local text = text:gsub('ئ','ی')
    local text = text:gsub('آ','ا')
    local text = text:gsub('ۀ','ه')
    local text = text:gsub('ي','ی')
    local text = text:gsub('ة','ه')
    local text = text:gsub('ؤ','و')
    local text = text:gsub(' ','')
    return text
end
local function abjad(text,num,str)
    local num = num
    local text = text
    if text:match(str) then
for word in string.gmatch(text, str) do num = num + numbers[str]
end
text = text:gsub(str,'')
end
return text , num
end
local function run(msg, matches)
       if not matches[2] or matches[2] == '' then
        return [[حروف جمل یا به عبارت دیگر حروف ابجد،نام مجموع صور هشتگانه حروف عرب است. این صور ازین قرار است: ابجد – هوز- حطي - کلمن - سعفص - قرشت - ثخذ - ضظغ.
ترتيب حروف (مراد،حروف صامت است) درين نسق همان ترتيب عبري آرامي است و اين امر با دلايل ديگر مؤید آنست که عرب الفباي خود را از آنان بوساطت نبطيان اقتباس کرده و شش حرف مخصوص عرب در آخر ترتيب ابجدي قرار داده شده است؛ علاوه برين ترتيب هشت کلمه تذکاريه که مفهومي ندارند با عبري و آرامي در اينکه حروف معرف اعدادند نيز شباهت دارد،از «همزه» تا «ی» نماينده ی 1تا10 ،«ک» تا «ق» نماینده ی 20تا100 و نه حرف آخر معرف 200تا1000 باشد. ابجد تجريد نوشتن (تصوف) ترک خواهش و آرزو کردن و از خودي و مزاحمت خواهش آمدن و از ماسوي الله مجرد گرديدن...
ا=1     ک=20     ش=300
ب=2     ل=30     ت=400
ج=3     م=40     ث=500
د=4     ن=50     خ=600
ه=5     س=60     ذ=700
و=6     ع=70     ض=800
ز=7     ف=80     ظ=900
ح=8     ص=90     غ=1000
ط=9      ق=100
ی=10     ر=200
➖➖➖➖➖➖➖
🇮🇷ARA BOT🇮🇷
🆔Admin:@mr_ahmadix
🆔Bot Supporter: @suport_arabot
(👆برای افرادی که ریپورت هستند👆)
➖➖➖➖➖➖➖
        ]]
        end
    local text = convert(matches[2])
    local num = 0
text , num = abjad(text,num,'ا')
text , num = abjad(text,num,'ب')
text , num = abjad(text,num,'ج')
text , num = abjad(text,num,'د')
text , num = abjad(text,num,'ه')
text , num = abjad(text,num,'و')
text , num = abjad(text,num,'ز')
text , num = abjad(text,num,'ح')
text , num = abjad(text,num,'ط')
text , num = abjad(text,num,'ی')
text , num = abjad(text,num,'ک')
text , num = abjad(text,num,'ل')
text , num = abjad(text,num,'م')
text , num = abjad(text,num,'ن')
text , num = abjad(text,num,'س')
text , num = abjad(text,num,'ع')
text , num = abjad(text,num,'ف')
text , num = abjad(text,num,'ص')
text , num = abjad(text,num,'ق')
text , num = abjad(text,num,'ر')
text , num = abjad(text,num,'ش')
text , num = abjad(text,num,'ت')
text , num = abjad(text,num,'ث')
text , num = abjad(text,num,'خ')
text , num = abjad(text,num,'ذ')
text , num = abjad(text,num,'ض')
text , num = abjad(text,num,'ظ')
text , num = abjad(text,num,'غ')
if text ~= '' then
  return 'فقط زبان فارسی پشتیبانی میشود'  
end
return 'عدد ابجد کبیر : '..num
    end
  return {
patterns = {
    "^[!#/]([Aa]bjad) (.*)$",
    "^[!#/]([Aa]bjad)$",
    "^[!#/](ابجد) (.*)$",
    "^[!#/](ابجد)$",
           },
run = run
  }  
  -- by @mr_ahmadix
  -- sp @suport_arabot
