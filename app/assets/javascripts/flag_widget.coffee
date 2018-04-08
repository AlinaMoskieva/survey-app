class FlagWidget
  constructor: (el)->
    @el = el
    @$el =$(el)

    @input = $(".flag__input", @$el)
    @ids = [1, 2, 3, 4]

    @bindings()

  bindings: (el)->
    $(".right_1, .right_2, .right_3, .right_4").on "click", @updateInput

  updateInput: (event)=>
    @input.val(event.target.id)
    @show_wrong_flags(event.target.id)

  show_wrong_flags: (id)=>
    index = @ids.indexOf(parseInt(id))
    @ids.splice(index, 1)

    for n in @ids
      $("#wrong_#{n}").show()
      $(".right_#{n}").hide()

$ ->
  new FlagWidget("#flags")
