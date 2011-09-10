class Device
  include Mongoid::Document
  field :name, :type => String

  key :name

  references_many :kerns
end