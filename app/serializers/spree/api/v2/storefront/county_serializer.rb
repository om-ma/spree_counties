module Spree
  module Api
    module V2
      module Storefront
        class CountySerializer < BaseSerializer
          set_type :county

          attributes :name, :state_id, :zipcode
        end
      end
    end
  end
end
