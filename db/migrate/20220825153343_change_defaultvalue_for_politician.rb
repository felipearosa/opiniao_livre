class ChangeDefaultvalueForPolitician < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :politician, false
  end
end
