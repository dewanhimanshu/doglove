Rails.application.config.active_record.belongs_to_required_by_default = false
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :omniauthable ,  omniauth_providers: [:google_oauth2]

   has_many :posts 
   
def self.from_omniauth(access_token)
    
    data = access_token.info
    user = User.where(email: data['email']).first

    
    unless user
        user = User.create(
           email: data['email'],
           password: Devise.friendly_token[0,20],
           confirmed_at: Time.now
        )
    end
    user


end

end
