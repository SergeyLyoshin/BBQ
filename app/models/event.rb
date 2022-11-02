class Event < ApplicationRecord
	belongs_to :user

	has_many :comments, dependent: :destroy
	has_many :subscriptions, dependent: :destroy
	# Чтобы Рельсы понимали, какой именно класс будет лежать
	# в модели subscribers, надо указать source
	has_many :subscribers, through: :subscriptions, source: :user
	has_many :photos 
		
	validates :title, presence: true, length: {maximum: 255}
	validates :address, presence: true
	validates :datetime, presence: true
end
