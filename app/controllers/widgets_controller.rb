class  WidgetsController < ApplicationController
  expose :widgets, -> { Widget.all }
  expose :question, -> { Question.last }

  def index
  end
end
