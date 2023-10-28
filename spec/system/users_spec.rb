require 'rails_helper'

RSpec.describe 'Users', type: :system do
  let(:user) { create(:user) }

  describe 'ログイン前' do
    describe 'ユーザー新規登録' do
      context 'フォームの入力値が正常' do
        it 'ユーザーの新規作成が成功する' do
          visit new_user_path
          fill_in 'Name', with: 'User_name'
          fill_in 'Email', with: 'email@example.com'
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
          click 'SignUp'
          expect(page).to have_content 'ユーザー登録が成功しました'
          expect(current_path).to eq questions_path
        end
      end
      context 'メールアドレスが未入力' do
        it 'ユーザーの新規作成が失敗する' do
          visit new_user_path
          fill_in 'Name', with: 'User_name'
          fill_in 'Email', with: 'email@example.com'
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
          click_button 'SignUp'
          expect(page).to have_content '1個エラーが発生しました'
          expect(page).to have_content "メールアドレスが空です"
          expect(current_path).to eq users_path
        end
      end
      context '登録済のメールアドレスを使用' do
        it 'ユーザーの新規作成が失敗する' do
          visit new_user_path
          fill_in 'Email', with: existed_user.email
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
          click_button 'SignUp'
          expect(page).to have_content '1個エラーが発生しました'
          expect(page).to have_content "メールアドレスが使われています"
          expect(current_path).to eq users_path
          expect(page).to have_field 'Email', with: existed_user.email
        end

      end
    end

    describe 'マイページ' do
      context 'ログインしていない状態' do
        it 'マイページへのアクセスが失敗する' do
          visit profile_path(user)
          expect(page).to have_content 'ログインしてください'
          expect(current_path).to eq root_path
        end
      end
    end
  end

  describe 'ログイン後' do
    before { login_as(user) }

    describe 'ユーザー編集' do
      context 'フォームの入力値が正常' do
        it 'ユーザーの編集が成功する' do
          visit edit_user_path(user)
          fill_in 'Name', with: 'User_name'
          fill_in 'Email', with: 'update@example.com'
          click_button 'Update'
          expect(page).to have_content 'ユーザーのアップデートに成功しました'
          expect(current_path).to eq profile_path(user)
        end
      end
      context 'メールアドレスが未入力' do
        it 'ユーザーの編集が失敗する' do
          visit edit_user_path(user)
          fill_in 'Name', with: 'User_name'
          fill_in 'Email', with: ''
          click_button 'Update'
          expect(page).to have_content '1個エラーが発生しました'
          expect(page).to have_content "メールアドレスが空です"
          expect(current_path).to eq profile_path(user)
        end
      end
      context '登録済のメールアドレスを使用' do
        it 'ユーザーの編集が失敗する' do
          visit edit_user_path(user)
          other_user = create(:user)
          fill_in 'Name', with: 'User_name'
          fill_in 'Email', with: other_user.email
          click_button 'Update'
          expect(page).to have_content '1個エラーが発生しました'
          expect(page).to have_content "メールアドレスが使われています"
          expect(current_path).to eq profile_path(user)
        end
      end
      context '他ユーザーの編集ページにアクセス' do
        let!(:other_user) { create(:user, email: "other_user@example.com") }

        it '編集ページへのアクセスが失敗する' do
          visit edit_user_path(other_user)
          expect(page).to have_content 'アクセスできません'
          expect(current_path).to eq profile_path(user)
        end
      end
    end
  end
end