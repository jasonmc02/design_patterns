class ReportDeprecated
  def initialize
    @title = "Monthly Report"
    @text = ["This are going", "really", "really well."]
  end
  
  def output_report(format)
    if format == :plain
      puts "**** #{@title} ****"
      @text.each do |line|
        puts line
      end
    elsif format == :html
      puts "<html>"
      puts "<head>"
      puts "<title>#{@title}</title>"
      puts "</head>"
      puts "<body>"
      @text.each do |line|
        puts "<p>#{line}</p>"
      end
      puts "</body>"
      puts "</html>"
    else
      raise "Unknown format: #{format}"
    end
  end
end

report = ReportDeprecated.new
report.output_report(:html)
