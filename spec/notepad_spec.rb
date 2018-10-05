require 'note_pad'

describe NotePad do

it { should respond_to(:add).with(2).arguments }

it "sees a list of all note titles" do
  notepad = NotePad.new
  notepad.add("title1", "this is the body")
  notepad.add("title2", "this is another body")
  expect(notepad.list).to eq "title1, title2"
end

it "picks a note and lists title and body" do
  notepad = NotePad.new
  notepad.add("title1", "this is the body")
  notepad.add("title2", "this is another body")
  expect(notepad.pick("title2")).to eq "title2, this is another body"
end

end
