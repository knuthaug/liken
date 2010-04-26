module Liken

  module Actions

    class ActionList


      def initialize(dirname)
        @dir = dirname
        @index_file = @dir +  "/index.yml"
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
        Dir.mkdir @dir unless File.directory?(@dir)
        unless File.exists? @index_file
          @index = File.new(@index_file, File::CREAT|File::RDWR, 0644)
        end
      rescue Exception => ex
        puts "error:" << ex
      end

      def size
        @items.size
      end

    end

  end
end
