module SimpleMenu
  class Item
    attr_reader :items
    attr_writer :label
    attr_accessor :url, :priority

    def initialize(id, options={})
      @id = id
      @items = {}
      update_attributes(options)
    end

    def update_attributes(options={})
      @url = options.delete(:url)
      @label = options.delete(:label)
      @priority = options.delete(:priority) || 10
    end

    def id
      @id.to_sym
    end

    def label
      @label || id.to_s.titleize
    end

    def item(id, options={}, &block)
      item = items[id]
      if item
        item.update_attributes(options)
      else
        item = Item.new(id, options)
      end

      if block_given?
        if block.arity == 1
          yield(item)
        else
          item.instance_eval(&Proc.new)
        end
      end

      @items[item.id] = item
    end

    def items_sorted
      items.sort{|a,b| a[1].priority <=> b[1].priority }
    end

    def [](id)
      items[id]
    end

    def delete(id)
      items.delete(id)
    end

  end
end
