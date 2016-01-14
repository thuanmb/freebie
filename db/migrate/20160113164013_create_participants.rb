class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :message, index: true, foreign_key: true
      t.references :target, polymorphic: true

      t.timestamps null: false
    end
  end
end
