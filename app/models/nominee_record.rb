class NomineeRecord < ApplicationRecord
  # belongs_to :nominee, class_name: "Account", foreign_key: :nominated_by_id
  # belongs_to :nominated_list, class_name: "Account", foreign_key: :nominee_id

  belongs_to :account
  belongs_to :nominee, class_name: "Account", foreign_key: :nominee_id
end
