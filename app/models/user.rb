class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :hairdresser, dependent: :destroy
  has_many :bookings
  validates_presence_of :first_name, :last_name
end
