module Spree
  module Api
    module V2
      module Storefront
        class StatesController < ::Spree::Api::V2::ResourceController
          before_action :require_spree_current_user
         
          private

          def resource
            @resource = scope.find(params[:id])
          end
          
          def model_class
            Spree::State
          end

          def resource_serializer
            Spree::Api::V2::Storefront::StateSerializer
          end

          def scope(skip_cancancan: true)
            base_scope = model_class
            base_scope = base_scope.includes(scope_includes) if scope_includes.any?
          end

          def scope_includes
            [:counties]
          end
        end
      end
    end
  end
end