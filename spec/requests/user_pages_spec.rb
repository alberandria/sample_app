require 'spec_helper'

describe "User pages" do

  subject { page }

  shared_examples_for "all user pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Sign Up page" do
    before { visit signup_path }
    let(:heading)    { 'Sign Up' }
    let(:page_title) { 'Sign Up' }

    it_should_behave_like "all user pages"
  end
end
