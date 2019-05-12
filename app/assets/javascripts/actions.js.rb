require 'ovto'
require 'actions/color_actions'

class Foo < Ovto::App
  class Actions < Ovto::Actions
    include ColorActions
  end
end
