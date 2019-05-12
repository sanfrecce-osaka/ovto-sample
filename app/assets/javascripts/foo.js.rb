require 'ovto'

class Foo < Ovto::App
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
        o 'label', { for: 'add_color' }, 'addition: '
        o 'input', {
          id: 'add_color',
          type: 'text',
          value: state.additional_color,
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
