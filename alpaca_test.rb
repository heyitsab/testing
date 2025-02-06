class PutsStatementFoundError < StandardError; end
class BindingPryFoundError < StandardError; end

def check_files_for_puts(files)
  raise "oh no"
  files.each do |file|
    if File.exist?(file)
      puts(file)
      File.foreach(file).with_index do |line, line_num|
        # Match `puts` method using a regular expression
        if line.match?(/^\s*puts\s+/)
          raise PutsStatementFoundError, "File '#{file}' contains 'puts' on line #{line_num + 1}"
        end
      end
    else
      puts "File '#{file}' does not exist."
    end
  end
  puts "No 'puts' statements found in the provided files."
end

def check_files_for_binding_pry(files)
  files.each do |file|
    if File.exist?(file)
      File.foreach(file).with_index do |line, line_num|
        # Match `binding.pry` using a regular expression
        if line.match?(/^\s*binding\.pry\s*/)
          raise BindingPryFoundError, "File '#{file}' contains 'binding.pry' on line #{line_num + 1}"
        end
      end
    else
      puts "File '#{file}' does not exist."
    end
  end
  puts "No 'binding.pry' statements found in the provided files."
end

files_to_check = ['alpaca.rb']

check_files_for_puts(files_to_check)
check_files_for_binding_pry(files_to_check)
