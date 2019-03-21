feature 'testing' do
  scenario 'testing infrastructure' do
    visit('/')
    expect(page).to have_content 'testing infrastructure'
  end
end
