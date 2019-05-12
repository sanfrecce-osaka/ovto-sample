require 'ovto'

class Foo < Ovto::App
  class ColorDesignator < Ovto::Component
    def render
      o '.ColorDesignator', { style: { display: 'flex' } } do
        o Label
        o DesignatingSelect, color: state.color
      end
    end

    class Label < Ovto::Component
      def render
        o 'LabelOfColorDesignator' do
          o 'label', { for: 'changing_color' }, 'designation: '
        end
      end
    end

    class DesignatingSelect < Ovto::Component
      def render(color:)
        o '.DesignatingSelect' do
          o 'select', {
            id: 'changing_color',
            value: color.colors[color.color_index],
            onchange: -> (e) { actions.update_designated_color(color_name: e.target.value) }
          } do
            color.colors.each do |selecting_color|
              o 'option', { value: selecting_color }, selecting_color
            end
          end
        end
      end
    end
  end
end
