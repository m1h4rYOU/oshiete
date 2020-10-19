class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update, :destroy]
  before_action :move_to_new, only: [:new]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @recipes = Recipe.all.order('created_at DESC')
  end

  def destroy
    @recipe.destroy
    if @recipe.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
  end

  def show
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:dish_name, :genre_id, :ingredient, :detail, :image).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def move_to_new
    redirect_to '/users/sign_in' unless user_signed_in?
  end

end
