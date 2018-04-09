# 1 question
content = "Летом килограмм клубники стоит 60 рублей. Мама купила 2 кг 200 г клубники. Сколько рублей сдачи она должна получить с 200 рублей?"
decision = "Найдем стоимость 2 кг 200 г клубники: 2,2 60 = 132 рубля. Значит, с 200 рублей мама получит сдачи 200 − 132 = 68 рублей."

question = FactoryGirl.create :question, content: content, index: 0, widget: Widget.find_by(name: "1"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "68", question: question

# 2 question
content = "Летом килограмм клубники стоит 80 рублей. Мама купила 1 кг 200 г клубники. Сколько рублей сдачи она получит с 500 рублей?"
decision = "Найдем стоимость покупки: 1 кг 200 г клубники стоит 1,2 · 80 = 96 рублей. Значит, с 500 рублей мама получит сдачи 500 − 96 = 404 рубля."

question = FactoryGirl.create :question, content: content, index: 1, widget: Widget.find_by(name: "2"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "404", question: question

# 3 question
content = "Летом килограмм клубники стоит 80 рублей. Маша купила 1 кг 750 гр клубники. Сколько рублей сдачи она должна получить с 200 рублей?"
decision = "Найдем стоимость покупки: 1 кг 750 г клубники стоят 1.750 * 80 = 140 рублей. Значит, с 200 рублей Маша получит 200 - 140 = 60 рублей сдачи."

question = FactoryGirl.create :question, content: content, index: 2, widget: Widget.find_by(name: "3"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "60", question: question

# 4 question
content = "Летом килограмм клубники стоит 90 рублей. Мама купила 1 кг 800 г клубники. Сколько рублей сдачи она должна получить с 500 рублей?"
decision = "Найдем стоимость покупки: 1 кг 800 г клубники стоит 1,8 · 90 = 162 рублей. Значит, с 500 рублей мама получит сдачи 500 − 162 = 338 рубля."

question = FactoryGirl.create :question, content: content, index: 3, widget: Widget.find_by(name: "4"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "триста тридцать восемь", question: question

# 5 question
content = "Найдите m из ра­вен­ства F = ma, если F = 84 и a = 12."
decision = ""

question = FactoryGirl.create :question, content: content, index: 4, widget: Widget.find_by(name: "5"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "7", question: question
FactoryGirl.create :answer_variant, content: "0.14", question: question
FactoryGirl.create :answer_variant, content: "1008", question: question
FactoryGirl.create :answer_variant, content: "8", question: question

# 6 question
content = "Найдите h из ра­вен­ства E = mgh, g = 9.8, m = 5, E = 4.9"
decision = ""

question = FactoryGirl.create :question, content: content, index: 5, widget: Widget.find_by(name: "6"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "0.1", question: question
FactoryGirl.create :answer_variant, content: "9.6", question: question
FactoryGirl.create :answer_variant, content: "-44.1", question: question
FactoryGirl.create :answer_variant, content: "0,49", question: question

# 7 question
content = "Мощность по­сто­ян­но­го тока (в ваттах) вы­чис­ля­ет­ся по фор­му­ле P = I^2R, где I — сила тока (в амперах), R — со­про­тив­ле­ние (в омах). Поль­зу­ясь этой формулой, най­ди­те сопротивление R (в омах), если мощ­ность составляет 144 Вт, а сила тока равна 4 А."
decision = ""

question = FactoryGirl.create :question, content: content, index: 6, widget: Widget.find_by(name: "7"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "9", question: question
FactoryGirl.create :answer_variant, content: " 36", question: question
FactoryGirl.create :answer_variant, content: "576", question: question
FactoryGirl.create :answer_variant, content: "18", question: question

# 8 question
content = "Мощность по­сто­ян­но­го тока (в ваттах) вы­чис­ля­ет­ся по фор­му­ле P = I^2R, где I — сила тока (в амперах), R — со­про­тив­ле­ние (в омах). Поль­зу­ясь этой формулой, най­ди­те мощ­ность P (в ваттах), если со­про­тив­ле­ние со­став­ля­ет 14 Ом, а сила тока равна 4 А."
decision = ""

question = FactoryGirl.create :question, content: content, index: 7, widget: Widget.find_by(name: "8"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "224", question: question
FactoryGirl.create :answer_variant, content: "56", question: question
FactoryGirl.create :answer_variant, content: "1.1", question: question
FactoryGirl.create :answer_variant, content: "49", question: question

# 9 question
content = "Флакон шампуня стоит 160 рублей. Можно ли купить на 1000 рублей во время распродажи, когда скидка составляет 25%, 8 флаконов шампуня?"
decision = ""

question = FactoryGirl.create :question, content: content, index: 8, widget: Widget.find_by(name: "9"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "да", question: question

# 10 question
content = "Флакон шампуня стоит 160 рублей. Можно ли купить на 1000 рублей во время распродажи, когда скидка составляет 25%, больше 6 флаконов шампуня?"
decision = ""

question = FactoryGirl.create :question, content: content, index: 9, widget: Widget.find_by(name: "10"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "да", question: question

# 11 question
content = "Флакон шампуня стоит 160 рублей. Можно ли купить на 1000 рублей во время распродажи, когда скидка составляет 25%, 9 флаконов шампуня?"
decision = ""

question = FactoryGirl.create :question, content: content, index: 10, widget: Widget.find_by(name: "11"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "нет", question: question

# 12 question
content = "Флакон шампуня стоит 160 рублей. Можно ли купить на 1000 рублей во время распродажи, когда скидка составляет 25%, 2 флаконов шампуня?"
decision = ""

question = FactoryGirl.create :question, content: content, index: 11, widget: Widget.find_by(name: "12"), decision: decision
FactoryGirl.create :answer_variant, :right, content: "нет", question: question
