require "punctual/employee/version"

module Punctual
  module Employee
    autoload :Notch,                 'punctual/employee/notch'
    autoload :CommandLineInterface, 'punctual/employee/command_line_interface'
  end
end
