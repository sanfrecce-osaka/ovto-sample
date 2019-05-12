require 'ovto'

class Foo < Ovto::App
  class Actions < Ovto::Actions
    def update_rondom_color
      { color_index: new_index }
    end

    def new_index
      (0..(state.colors.length - 1)).to_a.sample
    end

    def update_designated_color(color_name:)
      { color_index: state.colors.index(color_name) }
    end

    def dump_additional_color(value:)
      { additional_color: value }
    end

    def add_color
      { colors: set_colors, additional_color: '' }
    end

    def set_colors
      state.additional_color.empty? ? state.colors : state.colors.push(state.additional_color)
    end
  end
end
