require 'rails_helper'

describe User do
  fixtures :users

  describe '保存時に' do
    it 'パスワードが与えられた場合は暗号化して格納する' do
      # ここを考えて下さい
    end

    it 'パスワードが空文字列の場合はpasswordカラムは変更されない' do
      # ここを考えて下さい
    end
  end

  describe 'registered?メソッド' do
    it '正しくないemailに対してはfalseを戻す' do
      u = User.new(email: 'yama-da@rails.com', password: 'test1')
      expect(u.registered?).to be_falsey
    end

    it '正しくないpasswordに対してはfalseを戻す' do
      u = User.new(email: 'yamada@rails.com', password: 'test3')
      expect(u.registered?).to be_falsey
    end

    it '正しいemail/passwordに対してはtrueを戻す' do
      u = User.new(email: 'yamada@rails.com', password: 'test1')
      expect(u.registered?).to be_truthy
    end

    it '正しいemail/passwordで認証した時は認証者のidがセットされる' do
      u = User.new(email: 'yamada@rails.com', password: 'test1')
      u.registered?
      expect(u.id).to eq(users(:yamada).id)
    end
  end
end
