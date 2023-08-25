require 'rails_helper'

RSpec.describe '管理者ログイン', type: :system do
  before do
    FactoryBot.create(:admin, email: 'admin@example.com', password: 'correct_password')
  end

  context 'ログイン前' do
    it '管理画面にアクセスできないこと' do
      visit admin_root_path
      expect(page).to have_current_path new_admin_session_path, ignore_query: true
    end

    it 'ログインできること' do
      visit new_admin_session_path
      fill_in 'メール', with: 'admin@example.com'
      fill_in 'パスワード', with: 'correct_password'
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました'
      expect(page).to have_current_path admin_root_path, ignore_query: true
    end
  end
end
