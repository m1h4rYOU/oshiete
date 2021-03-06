class QuestionsController < ApplicationController
  def new
    @questions = Question.where(recipe_id: params[:recipe_id])
    @question = Question.new
  end

  def create
    @question = Question.new(text: params[:question][:text], recipe_id: params[:recipe_id], user_id: current_user.id)
    ActionCable.server.broadcast 'question_channel', content: @question if @question.save
  end
end
