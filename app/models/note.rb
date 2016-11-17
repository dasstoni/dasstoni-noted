class Note < ActiveRecord::Base
  belongs_to :topic
  belongs_to :subject

  validates :title, presence: true
  validates :url, presence: true
  validates_format_of :url, :with => URI::regexp(%w(http https))
end
