module Liken

  module Actions

    class ActionList

      def initialize
        @items = Hash.new
        read
      end

      def add(item)
        @items[item.name] = item
      end

      def delete(name)
        @items.delete(name)
      end


      def get(name)
        @items[name]
      end


      def read()
      end

      def size
        @items.size
      end

    end

  end
end
