# frozen_string_literal: true

require 'test_helper'

# :nodoc:
class TnefBinaryGemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TnefBinaryGem::VERSION
  end

  def test_execute_binary
    output = `bundle exec tnef --help`
    refute_nil output
  end

  def test_list_files_in_winmail_dat
    output = `bundle exec tnef --list test/fixtures/files/winmail.dat`
    files = output.lines.map { |line| line.split('|').first.strip }
    assert_equal 2, files.size
    assert files.include?('zappa_av1.jpg')
    assert files.include?('bookmark.htm')
  end
end
