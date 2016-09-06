RSpec.feature 'Admin Static Content', :js do
  stub_authorization!

  context 'when subscriber exists' do
    given!(:subscriber) { create(:subscriber) }

    background do
      visit spree.admin_subscribers_path
    end

    scenario 'I see created subscriber' do
      expect(page).to have_text subscriber.email
    end

    scenario 'can be deleted' do
      within_row(1) { click_icon :delete }
      page.driver.browser.switch_to.alert.accept unless Capybara.javascript_driver == :poltergeist
      expect(page).to have_text 'successfully removed!'
      expect(page).not_to have_text subscriber.email
    end
  end
end
