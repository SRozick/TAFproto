require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "TeachaFish.org" }


  describe "Home page" do

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title(base_title)
    end

    it "should have the sub-title '| Home'" do
      visit '/static_pages/home'
      expect(page).to have_title(" | Home")
    end

    it "should have the complete title 'TeachaFish.org | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Privacy Notice page" do

    it "should have the sub-title '| Privacy'" do
      visit '/static_pages/privacy_notice'
      expect(page).to have_title("| Privacy")
    end
  end

  describe "Privacy Notice page" do

    it "should have the sub-title '| Terms'" do
      visit '/static_pages/terms_of_use'
      expect(page).to have_title("| Terms")
    end
  end
end
