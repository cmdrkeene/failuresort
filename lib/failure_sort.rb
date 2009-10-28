class SpecFailureSort
  def self.sort(directory)
    failures = {}
    Dir["#{directory}/*.log"].each do |log_path|
      log = File.read(log_path)
      log.scan(/^(\.[a-z0-9\.\_\/]+\.rb)./i).flatten.each do |file|
        failures[file] ||= 0
        failures[file] += 1
      end
    end
    failures.sort { |a,b| b[1] <=> a[1] }.map { |e| e.first } || []
  end
end