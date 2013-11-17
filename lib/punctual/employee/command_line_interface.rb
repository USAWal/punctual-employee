require 'punctual/employee/notch'

module Punctual
 module Employee
   class CommandLineInterface

     def initialize(argv, stdin=STDIN, stdout=STDOUT, stderr=STDERR, kernel=Kernel)
        @argv, @stdin, @stdout, @stderr, @kernel = argv, stdin, stdout, stderr, kernel
     end

     def execute!
       Punctual::Employee::Notch.create notched_up_at: Time.now
     end

   end
  end
end
