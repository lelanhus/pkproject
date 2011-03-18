class BricksController < InheritedResources::Base
  
  respond_to :html
  respond_to :js, :only => :index
  
  def index
    @bricks = Brick.search(params[:search]).order("name").page(params[:page])
  end
  
  protected
  
  def collection
    @bricks ||= end_of_association_chain.order("name").page(params[:page])
  end
end
