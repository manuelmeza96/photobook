class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def name
  firstname + ' ' + lastname      
  end
  has_many :posts
  
  validates :username, presence: true, length: { minimum: 6}
  validates :firstname,length: { minimum: 1}
  validates :lastname, presence: true
end
