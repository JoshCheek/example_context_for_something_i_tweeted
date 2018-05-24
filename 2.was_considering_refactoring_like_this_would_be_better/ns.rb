module NS
  def shared
    " " + common
  end

  def common
    'common'
  end
end

module NS::One
  # this order works
  include NS
  extend self

  def custom_type
    helper + shared
  end

  def helper
    'one'
  end
end


module NS::Two
  # this order breaks `rake ns:two`
  extend self
  include NS

  def custom_type
    helper + shared
  end

  def helper
    'two'
  end
end

