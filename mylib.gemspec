Gem::Specification.new do |s|
    s.name        = 'mylib'
    s.version     = '0.2.2'
    s.date        = '2020-02-10'
    s.summary     = "MyLib. Manager for develoment components, libs, pods..."
    s.description = "Manages several components, libs, pods..."
    s.authors     = ["Wesley Araujo"]
    s.email       = 'wparaujo7@gmail.com'
    s.files       = ["lib/mylib.rb"]
    s.executables << 'mylib'

    s.add_runtime_dependency 'thor'
    s.add_runtime_dependency 'rspec'
    s.add_runtime_dependency 'claide'
    
    s.homepage    = 'https://github.com/wparaujo/mylib'
    s.license       = 'MIT'
  end