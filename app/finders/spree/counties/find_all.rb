module Spree
  module Counties
    class FindAll
      def self.execute
        counties = Spree::County.all
        counties
      end
    end
  end
end
