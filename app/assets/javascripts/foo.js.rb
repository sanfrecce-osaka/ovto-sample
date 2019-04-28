require 'ovto'

class Foo < Ovto::App
  class State < Ovto::State
    item :color_index, default: 0
    item :colors, default: %w(red blue green pink yellow gray)
  end

  class Actions < Ovto::Actions
    def update_rondom_color
      { color_index: new_index }
    end

    def new_index
      (0..(state.colors.length - 1)).to_a.sample
    end
  end

  class MainComponent < Ovto::Component
    def render
      o '.ColorChanger' do
        o 'input', {
          type: 'button',
          value: 'Hello',
          style: { background: state.colors[state.color_index] },
          onclick: -> { actions.update_rondom_color }
        }
        o 'input', {
          type: 'text',
          value: state.colors[state.color_index],
          disabled: 'disabled'
        }
      end
    end
  end
end
