class Lock < ActiveRecord::Base
  attr_accessible
  belongs_to :entry
  validates_presence_of :entry
end
# == Schema Information
#
# Table name: locks
#
#  id            :integer         not null, primary key
#  type          :string(255)
#  entry_id      :integer
#  file_entry_id :integer
#  entry_path    :string(255)
#  entry_url     :string(255)
#  external_url  :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

