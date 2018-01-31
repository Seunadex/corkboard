# frozen_string_literal: true

# User Class
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :confirmable, :lockable

  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  has_many :pins
  has_many :boards

  def self.find_for_database_authentication(conditions={})
    find_by(username: conditions[:email]) || find_by(email: conditions[:email])
  end
end
