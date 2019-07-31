class ProductsController < ApplicationController
  def index
    @search = params[:search]
    if @search.present?
      conditions = "UPPER(code) like ? or LOWER(name) like ?"
      @products = Product.where(conditions, "%#{@search.upcase}%", "%#{@search.downcase}%") 
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image 
      # transformation methods.
      @product.image = req["public_id"]
    end

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit
    @product = Product.find_by :id => params[:id]
  end

  def update
    @product = Product.find_by :id => params[:id]

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @product.image = req["public_id"]
      @product.save
    end

    if @product.update product_params
      redirect_to @product
    else
      render :edit
    end
  end
  def show
    @product = Product.find_by :id => params[:id]
  end

  def destroy
    product = Product.find_by :id => params[:id]
    product.destroy
    redirect_to product
  end

  private
  def product_params
    params.require(:product).permit(:code, :name, :dimension, :style, :description, :image, :brand, :category_id)    
  end
  
end
