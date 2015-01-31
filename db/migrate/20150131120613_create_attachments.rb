class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :article_id
      t.integer :image_file_size 
      t.string  :image_content_type
      t.string  :image_file_name
      t.timestamps
    end
  end
end
