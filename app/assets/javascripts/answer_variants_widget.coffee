class AnswerVariantsWidget
  constructor: (el)->
    @el = el
    @$el =$(el)

    @answer_input = $("#user_answer_answer", @$el)
    @hidden_input = $("#user_answer_position_value", @$el)
    @variants = $(".answer_variant", @$el)

    @bindings()

  bindings: (el)->
    @answer_input.on "change", @updateHiddenInput

  updateHiddenInput: (event)=>
    position = parseInt(@answer_input.val()) - 1
    answer = @variants[position].firstChild.nodeValue
    @hidden_input.val(answer)

$ ->
  if  $("#widget_with_variants").length > 0
    new AnswerVariantsWidget("#widget_with_variants")
