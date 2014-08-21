require 'rails_helper'
require 'spec_helper'


describe "Static Pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }

	shared_examples_for "All static pages" do
		it { should have_selector('h1'), text: heading }
		it { should have_title (full_title(title_page)) }

	end


	describe "Contacts page" do
		
		before { visit contacts_path }
		let(:heading) 	{ 'Contacts' }
		let(:title_page){ 'Contacts'}

		it_should_behave_like "All static pages"

	end

	describe "Home page" do

		before { visit root_path}

		let(:heading) 		{'Sample App'}
		let(:title_page) 	{''}

		it_should_behave_like "All static pages" 
		it { should_not have_title(' | Home')}

	end

	describe "Help page" do

		before { visit help_path }
		
		let(:heading) 		{ 'Help' }
		let(:title_page)	{ 'Help'}

		it_should_behave_like "All static pages"
	end

	describe "About Us" do

		before { visit about_path }

		let(:heading)		{ 'About Us' }
		let(:title_page)	{ 'About Us' }

		it_should_behave_like "All static pages"

	end

	## Checking links

	it "Should have the right links on the layout" do 
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Help"
		expect(page).to have_title(full_title('Help'))
		click_link "Contacts"
		expect(page).to have_title(full_title('Contacts'))
		click_link "Home"
		click_link "Sign up now!"
		expect(page).to have_title(full_title('Sign up'))

	end



end

