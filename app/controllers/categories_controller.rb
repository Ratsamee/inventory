class CategoriesController < ApplicationController
  def index
    @search = params[:search]
    if @search.present?
      conditions = "UPPER(code) like ? or LOWER(name) like ?"
      @categories = Category.where(conditions, "%#{@search.upcase}%", "%#{@search.downcase}%") 
    else
      @categories = Category.all
    end
    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def edit
    @category = Category.find_by :id => params[:id]
  end

  def update
    @category = Category.find_by :id => params[:id]
    if @category.update category_params
      redirect_to @category
    else
      render :edit
    end
  end

  def show
    @category = Category.find_by :id => params[:id]
  end

  def destroy
    category = Category.find_by :id => params[:id]
    category.destroy
    redirect_to category
  end

  private
  def category_params
    params.require(:category).permit(:code, :name, :description, :category_id)    
  end

end
