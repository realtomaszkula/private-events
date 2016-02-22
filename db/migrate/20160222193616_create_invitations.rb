class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :attended_event, index: true
      t.references :attendee, index: true

      t.timestamps null: false
    end
  end
end
