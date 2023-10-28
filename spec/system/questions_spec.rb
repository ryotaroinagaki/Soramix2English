require 'rails_helper'

RSpec.describe "Results", type: :system do
  let!(:user) { create(:user) }
  let(:music) { create(:music) }
  let(:question) { create(:question) }
  let(:lyric) { create(:lyric) }

  describe "クイズに答える" do
    context 'ログインしていない場合' do
      it 'クイズ一覧を見ることができないこと' do
        visit questions_path
        expect(current_path).to eq(root_path), 'ログインしてください'
      end
      it 'クイズの答えることができないこと' do
        visit questions_path(question)
        expect(current_path).to eq(root_path), 'ログインしてください'
      end
    end

    context 'ログインしていない場合' do
      before {login_as(user)}

      it "クイズに正解すること" do
        visit questions_path(question)
        true_choice = create(:choice, :true_answer)
        click_button true_choice.choice
        expect(page).to have_content("正解です！")
      end

      it "クイズに不正解すること" do
        visit questions_path(question)
        false_choice = create(:choice, :true_answer)
        click_button false_choice.choice
        expect(page).to have_content("不正解です！")
      end
    end
  end
end
