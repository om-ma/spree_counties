module Spree
  module Api
    module V2
      module Platform
        class CountiesController < ResourceController
          private

          def model_class
            Spree::County
          end

          def scope(skip_cancancan: true)
            base_scope = model_class
          end

          def scope_includes
            [:state]
          end
        end
      end
    end
  end
end