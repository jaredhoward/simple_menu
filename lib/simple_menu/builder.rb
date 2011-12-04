# module SimpleMenu
#   class Builder
# 
#     class << self
# 
#       def menu(&block)
#         menu = instance.instance_variable_get(:@menu)
#         if block_given?
#           if block.arity == 1
#             yield(menu)
#           else
#             menu.instance_eval(&Proc.new)
#           end
#         end
#         menu
#       end
# 
#       def method_missing(method, *args, &block)
#         if menu.respond_to?(method)
#           menu.send(method, *args, &block)
#         else
#           super
#         end
#       end
# 
#     end
# 
#     attr_reader :menu
# 
#     def initialize
#       @menu = SimpleMenu::Item.new(:builder_menu)
#     end
#   end
# end
