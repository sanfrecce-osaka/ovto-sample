require 'ovto'

class Foo < Ovto::App
  class Actions < Ovto::Actions
    module ColorActions
      def update_rondom_color
        {color: state.color.merge(color_index:new_index)}
      end

      def new_index
        (0..(state.color.colors.length - 1)).to_a.sample
      end

      def update_designated_color(color_name:)
        {color:state.color.merge(color_index:state.color.colors.index(color_name)) }
      end

      def dump_additional_color(value:)
        {color: state.color.merge(additional_color: value) }
      end

      def add_color
        {color: state.color.merge(colors: set_colors, additional_color: '') }
      end

      def set_colors
        state.color.additional_color.empty? ? state.color.colors : state.color.colors.push(state.color.additional_color)
      end
    end
  end
end
