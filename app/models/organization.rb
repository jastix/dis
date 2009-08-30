class Organization < ActiveRecord::Base

  validates_presence_of :title
  validates_length_of :title, :minimum => 3
    validates_format_of :title,
                      :with    => /\A^[A-Za-z]([^\"]*)([\d|\D])$\z/i
end

