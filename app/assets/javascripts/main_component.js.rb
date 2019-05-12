require 'ovto'

class Foo < Ovto::App
  class MainComponent < Ovto::Component
    def render
      o '.ColorChanger' do
        o ChangingColorButton
        o CurrentColor
        o ColorDesignator
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
