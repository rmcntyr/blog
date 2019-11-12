class Article < ApplicationRecord

	
	def index
		@articles = Article.all
	end

	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					length: { minimum: 5}
end
