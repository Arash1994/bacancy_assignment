class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :nominees, class_name: 'NomineeRecord', foreign_key: :nominated_by_id
  # has_many :nominated_list, class_name: 'NomineeRecord', foreign_key: :nominee_id       

  # has_many :nominees_nominee_records, class_name: 'NomineeRecord', foreign_key: :nominated_by_id
  # has_many :my_nominees, through: :nominees_nominee_records, source: :nominated_list, class_name: 'Account'
  # has_many :nominated_nominee_records, class_name: 'NomineeRecord', foreign_key: :nominee_id
  # has_many :nominated_list, through: :nominated_nominee_records, source: :nominee, class_name: 'Account'

  has_many :nominee_records
end
