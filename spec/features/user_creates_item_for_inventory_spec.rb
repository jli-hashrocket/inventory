require 'spec_helper'

feature 'User creates item for inventory', %q{
  As a food service employee,
  I want to create an item,
  So that I can update the inventory
} do
  context "with valid attribute" do
    it "creates a item for inventory" do
      visit '/inventories'
      click_on "New Item"

      visit '/inventories/new'

      fill_in "Title", with: "Chicken"
      fill_in "Description", with: "Thanks for being awesome"
      fill_in "Quantity", with: 4


    click_on "Submit"
    expect(page).to have_content "Item was successfully saved"
    end
  end

  context "with missing attributes" do
    it "does not create item for inventory if attributes" do
      visit '/inventories/new'

      click_on "Submit"
      expect(page).to have_content "Title can't be blank"
      expect(page).to have_content "Description can't be blank"
      expect(page).to have_content "Quantity can't be blank"
    end
  end
end
