class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob('#{path}/*.mp3').collect do |file|
      f.gsub("#{path}/", "")
    end 

  end

end
