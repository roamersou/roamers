# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_digest :string(255)
#  self_intro      :string(255)
#  tw_account      :string(255)
#  fb_account      :string(255)
#  insta_account   :string(255)
#  admin           :boolean          default(FALSE)
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ApplicationRecord
    has_many :thanksletters, dependent: :destroy
    attr_accessor :remember_token
    before_save { self.email = email.downcase }
    validates :name, presence: true, length:{maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length:{maximum: 255},
               format: { with: VALID_EMAIL_REGEX },
               uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length:{minimum:6}, allow_nil: true
    validates :self_intro, length:{maximum: 60}

    #fixture向けのdigestメソッド追加
    # 渡された文字列のハッシュ値を返す
    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

    # ランダムなトークンを返す
    def User.new_token
      SecureRandom.urlsafe_base64
    end

    # 永続セッションのためにユーザーをデータベースに記憶する
    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end

     # 渡されたトークンがダイジェストと一致したらtrueを返す
    def authenticated?(remember_token)
      return false if remember_digest.nil?
      BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

     # ユーザーのログイン情報を破棄する
    def forget
      update_attribute(:remember_digest, nil)
    end
end
