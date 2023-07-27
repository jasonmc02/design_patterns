class Report
  def initialize(formatter)
    @title = "Monthly Report"
    @text = ["This are going", "really", "really well."]
    @formatter = formatter  
  end

  def output_report
    @formatter.output_report(@title, @text)
  end
end

# report = Report.new(HTMLFormatter.new)
# report.output_report
