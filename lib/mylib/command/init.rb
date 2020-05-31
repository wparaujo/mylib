module MyLib
    class Command 
        class Init < Command 
            self.summary = "Generate Mylibfile for current directory"
            self.description = <<-DESC 
                algo
            DESC

            def initialize(argv)
                @mylibfile_path = Pathname.pwd + 'Mylibfile'
                super
            end

            def run 
                @mylibfile_path.open('w') { |f| f << mylibfile_template }
            end

            def mylibfile_template 
                mylibfile = ''
                mylibfile = <<~RUBY
                    mylib do
                        # Repo here
                        # repo 'name', :git => 'git_uri', :branch => 'branch_to_sync'
                    end
                RUBY
                mylibfile
            end
        end
    end 
end