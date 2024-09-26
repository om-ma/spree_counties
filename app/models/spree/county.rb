module Spree
  class County < ActiveRecord::Base
    belongs_to :state
    has_many :addresses, dependent: :nullify

    validates :name, presence: true
    
    Spree::Ability.register_ability(CountyAbility)

    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "id", "id_value", "name", "state_id", "updated_at", "zipcode"]
    end

    def self.json_api_permitted_attributes
      [
        'id', 'name', 'state_id', 'zipcode'
      ]
    end

    def <=>(other)
      name <=> other.name
    end

    def to_s
      name
    end
  end
end
