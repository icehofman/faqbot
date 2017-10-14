class Faq < ActiveRecord::Base
  validates :question, presence: true
  validates :answer, presence: true

  has_many :faq_hashtags
  has_many :hashtags, through: :faq_hashtags
  belongs_to :company
end