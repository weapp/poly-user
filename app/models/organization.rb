class Organization < ActiveRecord::Base
  devise :rememberable, :trackable

  has_and_belongs_to_many :people
  has_one :user, as: :account, dependent: :destroy
  attr_accessible :remember_me
  attr_accessible :remember_me, :user_attributes
  accepts_nested_attributes_for :user
end
