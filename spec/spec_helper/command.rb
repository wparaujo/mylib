module SpecHelper
    module Command 
        def argv(*argv)
            CLAide::ARGV.new(argv)
        end

        def command(*argv) 
            # argv << '--no-ansi'
            MyLib::Command.parse(argv)
        end

        def run_command(*args) 
            cmd = command(*args)
            cmd.validate!
            cmd.run
        end
    end
end