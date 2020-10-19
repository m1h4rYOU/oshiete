class QuestionsController < ApplicationController
  def new
    @questions = Question.all
    @question = Question.new
  end

  def create
    @question = Question.new(text: params[:question][:text])
    if @question.save
      ActionCable.server.broadcast 'question_channel', content: @question
    end
  end

end
