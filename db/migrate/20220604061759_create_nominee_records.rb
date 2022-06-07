class CreateNomineeRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :nominee_records do |t|
      t.bigint :nominated_by_id
      t.bigint :account_id
      t.bigint :nominee_id
      t.string :relationship
      t.integer :weightage

      t.timestamps
    end
  end
end
