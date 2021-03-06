class Attachment < ActiveRecord::Base
	  attr_accessible :article_id,  :image
  belongs_to :article
has_attached_file :image,
    :styles => {
      :thumb=> "100x100#",
      :small  => "300x300>",
      :large => "600x600>"
        }
end
