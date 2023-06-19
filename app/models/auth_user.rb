class AuthUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :validatable,
          :trackable
  enum roles: {
            patient: 0,
            doctor: 1,
            admin: 2,
            pharmacy: 3
  }
  after_initialize do
    if self.new_record?
      self.roles ||= :patient
    end
  end
end
