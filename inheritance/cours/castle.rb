require_relative "building.rb"

class Castle < Building
  def surface_floor
    p self
    super + 300
  end

  def has_butler?
    true
  end
end