class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|
      t.string :name
      t.boolean :notified
      t.boolean :rsvp
      t.integer :attending

      t.timestamps null: false
    end
  end
end
