class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates  :event, presence: true
  validates :body, presence: true

  # поле должно быть, только если не выполняется user.present? (у объекта на задан юзер)
  
  validates :username, presence: true, unless: -> { user.present? }


  # переопределяем метод, если есть юзер, выдаем его имя,
  # если нет -- дергаем исходный переопределенный метод
  def user_name
    if user.present?
      user.name
    else
      super
    end
  end
end