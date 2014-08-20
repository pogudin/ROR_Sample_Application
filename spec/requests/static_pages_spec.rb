require 'rails_helper'
require 'spec_helper'


describe "Static Pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }

	describe "Contacts page" do
		
		before { visit contacts_path }

		it { should have_content('Contacts') }
		it { have_title("#{base_title} | Contacts") }

	end

	describe "Home page" do

		before { visit root_path}

		it { should have_content('Sample App') }
		it { should have_title("#{base_title}") }
		it { should_not have_title(' | Home') }

	end

	describe "Help page" do

		before { visit help_path }

		it { should have_content('Help') }
		it { should have_title("#{base_title} | Help") }

	end

	describe "About Us" do

		before { visit about_path }

		it { should have_content('About Us') }
		it { should have_title ("#{base_title} | About Us") }

	end

end

