class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :faculty, required: false
  has_many :questions
  has_many :answers

  validates :puntos, numericality: { greater_than: 0 }

  def fullname
    self.fullname = [nombre, apellido].join(' ')
  end

end
