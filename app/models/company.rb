class Company < ActiveRecord::Base
  mount_uploader :logo, AvatarUploader
  mount_uploader :avatar, AvatarUploader
  mount_uploader :attachment, AvatarUploader

  def to_label
    "#{name}"
  end

  def to_name
    "#{name}"
  end

  def to_s
    "#{name}"
  end
end
