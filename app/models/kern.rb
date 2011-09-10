class Kern
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name
  field :version, :type => Float

  has_mongoid_attached_file :kernzip

  validates_presence_of :name, :version, :kernzip

  referenced_in :device
end
