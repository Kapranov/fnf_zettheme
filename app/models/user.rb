class User < ActiveRecord::Base
  # has_many :companies

  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :buyer, :distributor, :manufacturer]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :buyer
  end

  # validates_presence_of   :avatar
  # validates_integrity_of  :avatar
  # validates_processing_of :avatar
end
