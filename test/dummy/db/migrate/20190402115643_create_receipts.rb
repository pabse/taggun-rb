class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :url
      t.string :result

      t.timestamps
    end
  end
end
