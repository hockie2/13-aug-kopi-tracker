class Kopi < ActiveRecord::Base
    belongs_to :roast
    belongs_to :origin
    belongs_to :user
    has_and_belongs_to_many :customer

end