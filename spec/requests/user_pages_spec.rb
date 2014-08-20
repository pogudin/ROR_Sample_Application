require 'rails_helper'
require 'spec_helper'

describe "User pages" do

	subject { page }

	describe 'Signup page' do 
		before { visit signup_path }

		it { should_have content('Sign up') }
		it { should_have title (full_title('Sign up')) }
	end

end