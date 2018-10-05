class NotePad

  def initialize
    @notes = {}
  end

  def list
    @notes.keys.join(", ")
  end

  def add(title, body)
    @notes[title] = body
  end

  def pick(title)
    title + ", " + @notes[title]
  end

end
