module Spree
  module Api
    module V2
      module Storefront
        class CountiesController < ::Spree::Api::V2::ResourceController
          before_action :require_spree_current_user
         
          private

          def collection
            @collection = scope
          end

          def resource
            @resource = scope.find(params[:id])
          end
          
          def model_class
            Spree::County
          end

          def collection_serializer
            Spree::Api::V2::Storefront::CountySerializer
          end

          def resource_serializer
            Spree::Api::V2::Storefront::CountySerializer
          end

          def scope(skip_cancancan: true)
            base_scope = model_class
          end
        end
      end
    end
  end
end