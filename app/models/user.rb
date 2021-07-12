class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  scope :active_users, -> { where(active: true)}
  scope :inactive_users, -> { where(active: false)}
  # Ex:- scope :active, -> {where(:active => true)}
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  acts_as_user :roles => [:admin, :student]

  has_many :books

  mount_uploader :image, ImageUploader


  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def is_admin?
    return (self.roles_mask & 1) == 1
  end

  def set_admin
    self.roles_mask = (self.roles_mask | 1)
    self.save
  end

  def unset_admin
    self.roles_mask = 0
    self.save
  end
  def is_studente?
    return (self.roles_mask & 1) == 2
  end

  def set_studente
    self.roles_mask = (self.roles_mask | 2)
    self.save
  end

  def unset_studente
    self.roles_mask = 0
    self.save
  end


  def full_name
    "#{first_name} #{last_name}"
  end
  
end
