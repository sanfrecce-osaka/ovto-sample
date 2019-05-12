require 'ovto'

class Foo < Ovto::App
  class AdditionalColor < Ovto::Component
    def render
      o '.AdditionalColor', { style: { display: 'flex' } } do
        o Label
        o TextBox, color: state.color
        o Button
      end
    end

    class Label < Ovto::Component
      def render
        o '.Label' do
          o 'label', { for: 'add_color' }, 'addition: '
        end
      end
    end

    class TextBox < Ovto::Component
      def render(color:)
        o '.DesignatingSelect' do
          o 'input', {
            id: 'add_color',
            type: 'text',
            value: color.additional_color,
            onchange: -> (e) { actions.dump_additional_color(value: e.target.value) }
          }
        end
      end
    end

    class Button < Ovto::Component
      def render
        o 'input', {
          type: 'button',
          value: 'add',
          style: { background: 'purple' },
          onclick: -> { actions.add_color }
        }
      end
    end
  end
end
