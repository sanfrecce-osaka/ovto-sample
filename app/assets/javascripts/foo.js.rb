require 'ovto'

class Foo < Ovto::App
  COLORS = %w(red blue green pink yellow gray)

  class State < Ovto::State
    item :color_index, default: 0
  end

  class Actions < Ovto::Actions
    def update_color
      new_index = (0..(COLORS.length - 1)).to_a.sample
      { color_index: new_index }
    end
  end

  class MainComponent < Ovto::Component
    def render
      o 'input', {
        type: 'button',
        value: 'Hello',
        style: { background: COLORS[state.color_index] },
        onclick: -> { actions.update_color }
      }
    end
  end
end
