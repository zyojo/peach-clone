require 'rails_helper'

RSpec.describe '管理者ログイン', type: :system do
  before do
    FactoryBot.create(:admin, email: "admin@example.com", password: "correct_password")
  end

  context 'ログイン前' do
    it '管理画面にアクセスできないこと' do
      visit admin_root_path
      expect(current_path).to eq new_admin_session_path
    end

    it 'ログインできること' do
      visit new_admin_session_path
      fill_in 'メール', with: 'admin@example.com'
      fill_in 'パスワード', with: 'correct_password'
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました'
      expect(current_path).to eq admin_root_path
    end
  end
end
