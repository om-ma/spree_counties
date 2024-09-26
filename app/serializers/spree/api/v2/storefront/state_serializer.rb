module Spree
  module Api
    module V2
      module Storefront
        class StateSerializer < BaseSerializer
          set_type :state

          attributes :name, :abbr

          has_many :counties, serializer: CountySerializer
        end
      end
    end
  end
end
