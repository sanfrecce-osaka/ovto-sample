require 'ovto'

class Foo < Ovto::App
  class ChangingColorButton < Ovto::Component
    def render
      o '.ChangingColorButton' do
        o 'input', {
          type: 'button',
          value: 'Hello',
          style: { background: state.color.colors[state.color.color_index] },
          onclick: -> { actions.update_rondom_color }
        }
      end
    end
  end
end
