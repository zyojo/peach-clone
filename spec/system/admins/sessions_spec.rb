require 'rails_helper'

RSpec.describe '管理者ログイン', type: :system do
  before do
    FactoryBot.create(:admin, email: "admin@example.com", password: "password")
  end

  it 'ログインできること' do
    visit new_admin_session_path
    fill_in 'メール', with: 'admin@example.com'
    fill_in 'パスワード', with: 'password'
    click_button 'ログイン'
    expect(page).to have_content '管理者画面'
  end
end
