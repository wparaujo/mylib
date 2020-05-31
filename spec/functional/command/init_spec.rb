require File.expand_path('../../../spec_helper', __FILE__)

module MyLib
    describe Command::Init do
        it 'creates a Mylibfile in a directory for modules' do
            Dir.chdir(SpecHelper.temporary_directory) do
                run_command('init')
                # Pathname.new(SpecHelper.temporary_directory + 'Mylibfile').exist?.should  == true
                expect(Pathname.new(SpecHelper.temporary_directory + 'Mylibfile').exist?).to be(true)
            end
        end  
    end 
end