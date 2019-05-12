require 'ovto'

class Foo < Ovto::App
  class MainComponent < Ovto::Component
    def render
      o '.ColorChanger' do
        o ChangingColorButton
        o CurrentColor
        o ColorDesignator
        o AdditionalColor
      end
    end
  end
end
