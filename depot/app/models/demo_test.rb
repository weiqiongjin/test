class DemoTest
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
end
