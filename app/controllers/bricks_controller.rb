class BricksController < InheritedResources::Base
  
  protected
  
  def collection
    @bricks ||= end_of_association_chain.order("name").page(params[:page])
  end
end
