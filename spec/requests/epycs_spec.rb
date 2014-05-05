require 'spec_helper'

describe "Epycs" do

  describe "Home page" do
    it "should have the h1 EPYC" do
      visit '/epyc/home'
      page.should have_selector('h1', :content=> 'EPYC')
    end

    it "should have the EPYC title" do
      visit '/epyc/home'
      page.should have_selector('title', :content => "EPYC | Home")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/epyc/help'
      page.should have_selector('h1', :content => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/epyc/help'
      page.should have_selector('title', :content => "EPYC | Help")
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/epyc/about'
      page.should have_selector('h1', :content => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/epyc/about'
      page.should have_selector('title', :content => "EPYC | About Us")
    end
  end
end