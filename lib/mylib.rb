require 'thor'
require 'open3'

class MyLib < Thor
    
    desc 'get status of all libs', 'get git status for all development libs'
    def status 
    #   system  'find . -type d -name .git -exec git --git-dir={} --work-tree=$PWD/{}/.. status \;'
        Open3.popen3('find . -type d -name .git -exec git --git-dir={} --work-tree=$PWD/{}/.. status \;') do | stdin, stdout, stderr, wait_thr|
            puts stdout.read
            # puts stderr.read
        end
    end
    
    desc 'get status of all libs', 'get git status for all development libs'
    def pull 
        Open3.popen3('find . -type d -name .git -exec git --git-dir={} --work-tree=$PWD/{}/.. pull \;') do | stdin, stdout, stderr, wait_thr|
            puts stdout.read
            # puts stderr.read
        end
    end

    desc 'get status of all libs', 'get git status for all development libs'
    def push
        Open3.popen3('find . -type d -name .git -exec git --git-dir={} --work-tree=$PWD/{}/.. push \;') do | stdin, stdout, stderr, wait_thr|
            puts stdout.read
            # puts stderr.read
        end
    end
end