class  WidgetsController < ApplicationController
  expose :widgets, -> { Widget.all }
  expose :question, -> { Question.find(19) }

  def index
  end
end
