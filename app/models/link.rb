class Link < ApplicationRecord
  validates :url, presence: true

  scope :recent_first, -> { order(created_at: :desc) }

  def self.find(id)
    super Base62.decode(id)
  end

  def to_param
    Base62.encode(id)
  end
end
