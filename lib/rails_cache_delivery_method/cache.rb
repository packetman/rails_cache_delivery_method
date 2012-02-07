class Mail::Cache
  def initialize(settings = {})
    @settings = settings

    @deliveries = Array.new
  end

  attr_accessor :settings

  def deliver!(mail)
    @deliveries << mail
    File.open(@settings[:cache_path], 'w') do |file|
      Marshal.dump(@deliveries, file)
    end
  end
end