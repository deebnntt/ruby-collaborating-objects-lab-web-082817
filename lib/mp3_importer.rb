class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{self.path}/**/*.mp3"].map do |filename|
      data = filename.split("/")
      new_filename = data[4].to_s
    end.to_a
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
