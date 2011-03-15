require 'spec_helper'

describe "Bricks" do
  describe "GET /bricks" do
    it "displays bricks" do
      Factory(:brick, :name => "Apple")
      visit bricks_path
      page.should have_content("Apple")
      page.should have_content("All Bricks")
      save_and_open_page
    end
    
    it "displays the appropriate brick" do
      Factory(:brick, :name => "Apple")
    end
  end
end
