class Message < ActiveRecord::Base
  attr_accessible :recipient, :text, :title

  belongs_to :recipient, class_name: "User"

  validates :title, presence: true
  validates :text, presence: true
  validates :recipient, presence: true
end
