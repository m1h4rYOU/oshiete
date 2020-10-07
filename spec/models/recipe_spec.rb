require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe '#create' do
    before do
      @recipe = FactoryBot.build(:recipe)
      @recipe.image = fixture_file_upload('/public/images/test_image.png')
    end

    it 'imageが存在すればレシピ投稿できること' do
      expect(@recipe).to be_valid
    end

    it 'imageが空では登録できないこと' do
      @recipe.image = nil
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Image can't be blank")
    end

    it 'dish_nameが空では登録できないこと' do
      @recipe.dish_name = nil
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Dish name can't be blank")
    end

    it 'genre_idが「--」では登録できないこと' do
      @recipe.genre_id = 1
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include('Genre must be other than 1')
    end

    it 'ingredientが空では登録できないこと' do
      @recipe.detail = nil
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Detail can't be blank")
    end

    it 'detailが空では登録できないこと' do
      @recipe.detail = nil
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Detail can't be blank")
    end
  end
end
