# == Schema Information
#
# Table name: accounts
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  uid                    :string(255)
#  provider               :string(255)
#  name                   :string(255)
#  image                  :text(65535)
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_accounts_on_email                 (email) UNIQUE
#  index_accounts_on_reset_password_token  (reset_password_token) UNIQUE
#

class Account < ApplicationRecord
  validates :email, {uniqueness: true}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  devise :database_authenticatable, :omniauthable, omniauth_providers: %i[facebook]
  has_many :pay_forwards
  has_many :interests
  has_many :tags

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |account|
      account.email = auth.info.email
      account.password = Devise.friendly_token[0,20]
      account.name = auth.info.name
      account.image = auth.info.image
    end
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
