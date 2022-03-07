class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.text :option, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
