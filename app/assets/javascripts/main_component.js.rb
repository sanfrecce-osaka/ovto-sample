require 'ovto'

class Foo < Ovto::App
  class MainComponent < Ovto::Component
    def render
      o '.ColorChanger' do
        o ChangingColorButton
        o CurrentColor
        o 'label', { for: 'changing_color' }, 'designation: '
        o 'select', {
          id: 'changing_color',
          value: state.color.colors[state.color.color_index],
          onchange: -> (e) { actions.update_designated_color(color_name: e.target.value) }
        } do
          state.color.colors.each do |color|
            o 'option', { value: color }, color
          end
        end
        o 'label', { for: 'add_color' }, 'addition: '
        o 'input', {
          id: 'add_color',
          type: 'text',
          value: state.color.additional_color,
          onchange: -> (e) { actions.dump_additional_color(value: e.target.value) }
        }
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
