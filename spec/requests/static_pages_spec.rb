require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
  
    it "should have the h1 'TwantApp'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'TwantApp' )
    end
  
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector( 'title', :text => "TwantApp | Home")
    end
  
  end
  

  describe "Help page" do
    
    it "should have the h1 'HALP!" do
      visit '/static_pages/help'
      page.should have_selector( 'h1', :text => 'HALP!' )
    end
    
    it "should have the title 'HALP!'" do
      visit '/static_pages/help'
      page.should have_selector( 'title', :text => "TwantApp | HALP!")
    end
  
  end
  
  describe "About page" do
    
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the title 'About Us" do
      visit '/static_pages/about'
      page.should have_selector( 'title', :text => "TwantApp | About Us")
    end
    
  end

end
