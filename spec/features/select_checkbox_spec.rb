require 'rails_helper'

feature 'Check checkbox', js: true do

  scenario 'select a checkbox' do

  visit artist_path("7")

  # Why does it not go to localhost
  sleep (5)

    page.check('checkbox')

    page.execute_script("toggleDone()")

    expect(page).to have_css('.completed')
   end
  end
