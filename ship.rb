class Ship < Structure

  def initialize(args)
    include Drawable
    super
    @sprite = args.fetch[:sprite]
  end

  Drawable(@sprite)

end
