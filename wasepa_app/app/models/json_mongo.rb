class JsonMongo
  include Mongoid::Document
  field :some_data, :type => Hash
end
