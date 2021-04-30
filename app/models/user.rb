class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]


  def self.from_google(email:, first_name:, uid:, last_name:, password:, provider:)
    create_with(uuid: uid, provider: provider, first_name: first_name, last_name: last_name, password: password).find_or_create_by!(email: email)
  end
end
