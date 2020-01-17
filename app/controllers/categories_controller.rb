class CategoriesController < ApplicationController 

  def index
    
  end

  def new
    @category = Category.new

  end

  def show
    
  end

  def create
    @category = Category.new(category_params)

    if test
      
    else
      
    end

  end
  
end