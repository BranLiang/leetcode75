require "minitest/test_task"

Minitest::TestTask.create

desc "Generate lib and test files for your leetcode task"
task :g do
  if ARGV[1] == nil
    puts "Missing task name:"
    puts "Example: rake g 392_is_subsequence"
    return
  end

  module_name = "q_#{ARGV[1]}".split('_').collect(&:capitalize).join

  lib_template = %{module #{module_name}
end
}

  test_template = %{require_relative "./test_helper"

class #{module_name}Test < Minitest::Test
  include #{module_name}

  def test_it_works
  end
end
}

  # Write files to destinations
  File.write("./lib/q_#{ARGV[1]}.rb", lib_template)
  File.write("./test/q_#{ARGV[1]}_test.rb", test_template)

  puts "Done! ✅"

  exit 0
end
