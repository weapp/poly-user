# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  account_id   :integer
#  account_type :string(255)
#  slug         :string(255)
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :account_id, :account_type, :name, :slug
  belongs_to :account, :polymorphic => true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def to_s
    name
  end
end
