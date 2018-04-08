12.times do |i|
  FactoryGirl.create :widget, name: i + 1
end

question = FactoryGirl.create :question, index: 1, widget: Widget.last

FactoryGirl.create_list :answer_variant, 3, question: question
FactoryGirl.create :answer_variant, :right, question: question
