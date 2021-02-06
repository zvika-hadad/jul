class CatalogController < ApplicationController
  def categories
    @categories = Category.all
  end
  def products
    category = Category.find(params[:id])
    descendant_ids = category.descendant_ids
    descendant_ids << category.id
    
    @products = Product.paginate(page: params[:page], per_page: 2).order(:name).where(category_id: descendant_ids)
  end
end
