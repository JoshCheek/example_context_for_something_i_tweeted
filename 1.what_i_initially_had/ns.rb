module NS
  extend self

  # in reality, they diverged more than my example illustrates,
  # and there were a few more methods than this, and they were
  # a bit more annoying to look at :P

  def custom_type_one
    one_helper + shared
  end

  def one_helper
    'one'
  end

  def custom_type_two
    two_helper + shared
  end

  def two_helper
    'two'
  end

  def shared
    " " + common
  end

  def common
    'common'
  end
end
