require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
  
    it "works! Oh, and it shoud lhave the content 'TwantApp'" do
      # Run the generator again with the --webrat flag 
      # if you want to use webrat methods/matchers
      visit '/static_pages_index/home'
      page.should have_content( 'TwantApp' )
      end
  end
end
