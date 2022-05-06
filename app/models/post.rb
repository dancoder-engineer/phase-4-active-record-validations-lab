class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :clickbait
 #   validate :clickbait2

    def clickbait
        if title == "True Facts"
            errors.add(:title, "Too clickbaity")
        end
    end

 #   def clickbait2
 #       if title.match?(/flatironschool.com/)
 #           errors.add(:title, "We're only allowed to have people who work for the company in the database!")       
 #       end
 #   end
end
