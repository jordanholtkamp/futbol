require 'rake/testtask'

Rake::TestTask.new do |t|
    t.pattern = "test/**/*_test.rb"
end

task default: ["test"]

# # David's version:
# require 'rake/testtask'
#
# Rake::TestTask.new do |t|
#   t.test_files = FileList['test/*_test.rb']
# end
# desc "Run Tests"
#
# task default: :test
