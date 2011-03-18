module ApplicationHelper
  
  def render_target_and_sources(resource)
    render_targets(resource)
    render_sources(resource)
  end
  
  private
  
  def render_targets(resource)
    render 'shared/relationships_table', :resources => resource.targets
  end
  
  def render_sources(resource)
    render 'shared/relationships_table', :resources => resource.sources
  end
end
