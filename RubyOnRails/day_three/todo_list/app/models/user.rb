class User < ActiveRecord::Base
  has_many :todo
  before_save :encrypt_password

  def encrypt_password
    if self.password.present?
      self.password = Digest::SHA1.hexdigest(self.password)
    else
      self.password = self.password_was
    end
  end

  def registered?
    # ここを考えて下さい。email/passwordで認証できれば true を認証できなければ falseを戻します。
    # さらに、認証できた場合はインスタンスのidに認証されたユーザーのidが入るようにします
    self.password = Digest::SHA1.hexdigest(self.password)
    user = User.where(email: self.email, password: self.password).first
    self.id = user.id unless user.nil?
    user.nil? ? false : true
  end
end
