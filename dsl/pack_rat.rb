require "finder"

class PackRat
  def backup(dir, find_expressions = All.new)
    Backup.instance.data_sources << DataSource.new(dir, find_expressions)
  end

  def to(backup_directory)
    Backup.instance.backup_directory = backup_directory
  end


  def interval(minutes)
    Backup.instance.interval = minutes
  end

  eval(File.read("backup_list.txt"))
  Backup.instance.run
end