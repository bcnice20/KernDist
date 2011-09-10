class Kern
  include Mongoid::Document
  field :name, :type => String
  field :version, :type => Float
end
