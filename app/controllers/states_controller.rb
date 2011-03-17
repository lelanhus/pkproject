class StatesController < InheritedResources::Base
  
  
  protected
  
  def collection
    @states ||= end_of_association_chain.order("name").page(params[:page])
  end
end
