class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :list
  after_create :create_list

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    info = access_token['user_info']
    if user = User.find_by_email(data["email"])
      user
    else # Create a user with a stub password. 
      User.create(:email => data["email"], :password => Devise.friendly_token[0,20]) do |u|
        u.name = info["name"]
        #u.username = info["nickname"] 
        #u.avatar = info['image']
        u.uid =  access_token['uid']
        u.token = access_token['credentials']['token']
      end
    end
  end
end


# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  token                  :string(255)
#  uid                    :string(255)
#  name                   :string(255)
#

