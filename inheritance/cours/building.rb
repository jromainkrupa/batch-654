class Building
  # def initialize(attr = {})
  #   @name   = attr[:name]
  #   @length = attr[:length]
  #   @width  = attr[:width]
  # end
  attr_reader :name
  attr_writer :name
  
  def initialize(name, length, width)
    @name   = name
    @length = length
    @width  = width
  end



  # def name
  #   @name
  # end

  # def name=(param)
  #   @name = param
  # end

  def surface_floor
    calculation
  end

  private

  def calculation
    @length * @width
  end
end