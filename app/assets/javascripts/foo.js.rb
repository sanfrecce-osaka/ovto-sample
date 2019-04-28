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

    def update_designated_color(color_name:)
      { color_index: state.colors.index(color_name) }
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
        o 'label', { for: 'changing_color' }, 'designation: '
        o 'select', {
          id: 'changing_color',
          value: state.colors[state.color_index],
          onchange: -> (e) { actions.update_designated_color(color_name: e.target.value) }
        } do
          state.colors.each do |color|
            o 'option', { value: color }, color
          end
        end
      end
    end
  end
end
