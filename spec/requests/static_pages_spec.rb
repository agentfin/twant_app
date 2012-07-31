require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector 'h1', text: heading }
    it { should have_selector 'title', text: full_title(page_title) }
  end
  
  it "should have the rigth links on the layout" do
    visit root_path
    
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "HALP!"
    page.should have_selector 'title', text: full_title('HALP')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Get some..."
    page.should have_selector 'title', text: full_title('Get Some') 
    click_link "twant app"
    page.should_not have_selector 'title', text: full_title('TwantApp')   
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'TwantApp' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "HALP! page" do
    before { visit halp_path }
    let(:heading) { 'HALP!' }
    let(:page_title) { 'HALP' }
    
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading) { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading) { 'Contact...' }
    let(:page_title) { 'Contact' }
    
    it_should_behave_like "all static pages"
  end
  
end