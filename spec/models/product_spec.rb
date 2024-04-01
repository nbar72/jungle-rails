require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    it 'should save product if all required fields are filled out' do
      @category = Category.new(name: 'Test Category')
      @category.save
      @product = Product.new(name: 'Test Product', price: 100, quantity: 10, category: @category)

      expect(@product).to be_valid
    end

    it 'should not be valid if name is not given' do
      @product = Product.new(name: nil, price: 100, quantity: 10, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should not be valid if price is not given' do
      @product = Product.new(name: 'Test Product', quantity: 10, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it 'should not be valid if quantity is not given' do
      @product = Product.new(name: 'Test Product', price: 100, quantity: nil, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should provide an error message if category is not set' do
      @product = Product.new(name: 'Test Product', price: 100, quantity: nil, category: nil)
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
  end

end






