module Feedbacks
  class Create
    include Interactor

    delegate :params, :user, to: :context
    delegate :id, to: :user, prefix: true

    def call
      params.each do |param|
        feedback = Feedback.create(feedback_params(param))
        widget = feedback.widget
        update_widget_raiting(widget, new_raiting(widget, feedback.raiting))
      end
    end

    private

    def feedback_params(params)
      params.permit(:raiting, :comment, :widget_id).merge(user_id: user.id)
    end

    def update_widget_raiting(widget, raiting)
      widget.update(raiting: raiting)
      widget.increment!(:votes_count)
    end

    def new_raiting(widget, raiting)
      ((widget.raiting * widget.votes_count + raiting) / (widget.votes_count + 1)).round(2)
    end
  end
end
