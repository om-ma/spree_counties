module Spree
  module Admin
    class CountiesController < Spree::Admin::ResourceController
      before_action :load_data

      def index
        respond_with(@collection) do |format|
          format.html
          format.js { render :partial => 'county_list' }
        end
      end

      protected

      def collection
        return @collection if @collection.present?

        params[:q] ||= {}
        @collection = super

        if params[:q].present?
          @search = @collection.ransack(params[:q])
          @collection = @search.result
        end

        @collection
      end

      def load_data
        @states = Spree::State.order(:name)
      end

    end
  end
end