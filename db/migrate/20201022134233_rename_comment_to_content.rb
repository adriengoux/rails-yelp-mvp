class RenameCommentToContent < ActiveRecord::Migration[6.0]
  def change
    change_table :reviews do |t|
      t.rename :comment, :content
    end
  end
end
