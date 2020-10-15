class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def new
  end

  def create
    @question_create = current_user.questions.build(question_params)
    respond_to do |format|
      if @question_create.save
        format.js { render :index }
      else
        format.html { redirect_to recipe_questions_path(@question_create.post), notice: '質問できませんでした...' }
      end
    end
  end

  def index
    @questions = Question.all
  end

  def show
    @questions = @question.questions
    @question_post = @question.questions.build #投稿全体へのコメント投稿用の変数
    @question_reply = @question.questions.build #コメントに対する返信用の変数
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content, :recipe_id, :user_id, :parent_id)
  end
end
