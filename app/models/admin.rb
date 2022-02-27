class Admin < ApplicationRecord
  has_one_attached :image_id

    def get_image
        if image.attached?
          image
        else
            'no_image.jpg'
        end
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
