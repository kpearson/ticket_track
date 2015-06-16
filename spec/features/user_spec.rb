describe "the signin process", :type => :feature do
  before :each do
    User.create!(:email => 'user@example.com', :password => 'password')
  end

  it "signs me in" do
    visit '/sessions/new'
    save_and_open_page
    within("#session") do
      fill_in 'email', :with => 'user@example.com'
      fill_in 'password', :with => 'password'
    end
    click_button 'Submit'
    expect(page).to have_content 'Success'
  end
end
