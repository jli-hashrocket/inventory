require 'spec_helper'

feature 'User views the inventory', %q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
} do

  context 'views full list of inventories' do
    it 'views all inventories' do
      inventory1 = FactoryGirl.create(:inventory, title: 'Chicken')
      inventory2 = FactoryGirl.create(:inventory, title: 'Steak')
      inventory3 = FactoryGirl.create(:inventory, title: 'Lamb')

      visit '/inventories'
      expect(page).to have_content(inventory1.title)
      expect(page).to have_content(inventory2.title)
      expect(page).to have_content(inventory3.title)
    end
  end
end
