class Place < ApplicationRecord
  # talks to the "places" table
 #ChatGPT told me I needed this to get the connections to work
  has_many :entries
end
