class Video < ActiveRecord::Base
attr_accessible :content, :title, :video
has_attached_file :video, styles: {
    medium: { geometry: "640x480", format: 'flv' },
    thumb: {  geometry: "100x100#", format:'jpg', time: 10 }
  }, processors: [:ffmpeg]
        validates_attachment_content_type :content_type, :video,  /\Aflv\/.*\Z/

    

end
