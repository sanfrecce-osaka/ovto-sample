require 'ovto'

class Foo < Ovto::App
  class CurrentColor < Ovto::Component
    def render
      o 'input', {
        type: 'text',
        value: state.color.colors[state.color.color_index],
        disabled: 'disabled'
      }
    end
  end
end
