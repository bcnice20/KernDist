class Device
  include Mongoid::Document
  
  field :name
  key :name

  references_many :kerns
end