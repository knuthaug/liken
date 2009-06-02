module Liken

  module Actions

    class ActionList

      def initialize
        @items = Array.new
      end

      def add(item)
        @items.push(item)
      end

      def size
        @items.size
      end

    end

  end
end
