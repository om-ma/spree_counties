module Spree
  module StateDecorator
    def self.prepended(base)
      base.has_many :counties, -> { order('name ASC') }, dependent: :destroy
    end
  end
end
::Spree::State.prepend Spree::StateDecorator if ::Spree::State.included_modules.exclude?(Spree::StateDecorator)
