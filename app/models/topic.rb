class Topic < ActiveRecord::Base
  belongs_to :subject
  has_many :notes

  validates :title, presence: true
end
