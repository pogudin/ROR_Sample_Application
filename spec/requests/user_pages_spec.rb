require 'rails_helper'
require 'spec_helper'

describe "User pages" do

	subject { page }
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe 'Signup page' do 
		before { visit signup_path }

	#	it { should_have content('Sign up') }
		it { should have_selector('h1', :text=>'Sign up')}
		it { should have_title ("#{base_title} | Sign up") }
	end

end