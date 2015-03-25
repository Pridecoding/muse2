class Post < ActiveRecord::Base
	acts_as_votable
	
	belongs_to :user
	has_many   :comments

	has_attached_file :image, styles: { medium: "390x400>", small: "350x250>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/	

 has_attached_file :video, styles: {
    medium: { geometry: "640x480", format: 'flv' },
    thumb: {  geometry: "100x100#", format:'jpg', time: 10 }
  }, processors: [:ffmpeg]
    do_not_validate_attachment_file_type :video
 

end
