class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_profile!

  has_one :profile

  private
  def create_profile!
    self.build_profile
    self.profile.save(validate: false)
  end
end
