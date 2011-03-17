class CategoriesController < InheritedResources::Base
  
  
  protected
  
  def collection
    @categories ||= end_of_association_chain.order("name").page(params[:page])
  end
end
