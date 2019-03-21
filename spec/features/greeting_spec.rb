feature 'greet user' do
  scenario 'hello header' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end

feature 'ask for name' do
  scenario 'ask for name' do
    visit ('/')
    expect(page).to have_content "What is your name?"
  end
end

feature 'ask for birthday' do
  scenario 'ask for birthday' do
    visit ('/')
    expect(page).to have_content "When is your birthday?"
  end

  scenario 'if the birthday is today' do
    time = Time.new
    day = time.day
    month = time.strftime "%B"

    visit '/'
    fill_in :name, with: 'Riya'
    fill_in :day, with: day
    select month, from: "month"
    click_button 'Go'
    expect(page).to have_content "HAPPY BIRTHDAY Riya!!!"
  end
end
