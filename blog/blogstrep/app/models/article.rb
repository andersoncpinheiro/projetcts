class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum:10, maximum:30}
    validates :body, presence: true, length: {minimum:10, maximum:100}
    
    scope :desc_order, -> {order(created_at: :desc)}
    scope :without_highlights, -> (ids) {where("id NOT IN(#{ids})")}

end
