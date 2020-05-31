module MyLib
    class Command < CLAide::Command
        require 'mylib/command/init'
        require 'mylib/command/install'

        self.command = 'mylib'
        self.version = '1.0.0'
        self.description = 'Local Development Pods Manager.'
        
        def self.run(argv)
            super(argv)
        end
    end
end