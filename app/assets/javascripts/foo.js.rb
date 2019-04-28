require 'ovto'

class Foo < Ovto::App
  class State < Ovto::State
    item :color_index, default: 0
    item :colors, default: %w(red blue green pink yellow gray)
  end

  class Actions < Ovto::Actions
    def update_color
      new_index = (0..(state.colors.length - 1)).to_a.sample
      { color_index: new_index }
    end
  end

  class MainComponent < Ovto::Component
    def render
      o 'input', {
        type: 'button',
        value: 'Hello',
        style: { background: state.colors[state.color_index] },
        onclick: -> { actions.update_color }
      }
    end
  end
end
