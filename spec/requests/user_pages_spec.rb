require 'spec_helper'

describe "User Pages" do
  subject { page }
  
  describe "getsome page" do
    before { visit getsome_path }
    
    it { should have_selector 'h1', text: 'Get Some' }
    it { should have_selector 'title', text: full_title('Get Some') }
  end
end
