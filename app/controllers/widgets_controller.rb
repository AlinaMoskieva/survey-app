class  WidgetsController < ApplicationController
  expose :widgets, -> { Widget.all }

  def index
  end
end
