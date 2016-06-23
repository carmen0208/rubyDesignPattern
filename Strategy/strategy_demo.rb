require_relative '../example'
require_relative 'strategy'


example %q{

report = Report.new(HTMLFormatter.new)
report.output_report

}


example %q{

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report

}
