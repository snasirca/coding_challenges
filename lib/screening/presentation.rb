# Presentation
#  Slides
#    content: String
#  play()
#    A
#    B
#    C

<<~EOS

  A
  B
   E
    F
    G
  D
  C

EOS

require "rspec/autorun"

class Slide
  attr_reader :content

  def initialize(content, children_slides = [])
    @content = content
    @children_slides = children_slides
  end

  def output(level = 0)
    result = " " * level + @content
    @children_slides.each do |children_slide|
      result += "\n" + children_slide.output(level + 1)
    end
    result
  end

  def nest(child_slide)
    @children_slides << child_slide
  end
end

class Presentation
  def initialize(slides)
    @slides = slides
  end

  def play
    puts @slides.map(&:output).join("\n")
  end

  def insert(preceding_slide_content, new_slide)
    preceding_slide = slide_from_content(preceding_slide_content)
    @slides.insert(@slides.index(preceding_slide) + 1, new_slide)
  end

  def nest(parent_slide_content, new_slide)
    parent_slide = slide_from_content(parent_slide_content)
    parent_slide.nest(new_slide)
  end

  private

  def slide_from_content(content)
    @slides.find { |slide| slide.content == content }
  end
end

RSpec.describe "Solution" do
  it "5" do
    slide_e = Slide.new("E", [Slide.new("F"), Slide.new("G")])
    presentation = build_presentation("A", "B", "D", "C")
    presentation.nest("B", slide_e)

    expect do
      presentation.play
    end.to output(<<~OUTPUT).to_stdout
      A
      B
       E
        F
        G
      D
      C
    OUTPUT
  end

  it "4" do
    presentation = build_presentation("A", "B", "D", "C")
    presentation.nest("B", Slide.new("E"))

    expect do
      presentation.play
    end.to output(<<~OUTPUT).to_stdout
      A
      B
       E
      D
      C
    OUTPUT
  end

  it "3" do
    presentation = build_presentation("A", "B", "C")
    presentation.insert("C", Slide.new("D"))

    expect do
      presentation.play
    end.to output(<<~OUTPUT).to_stdout
      A
      B
      C
      D
    OUTPUT
  end

  it "2" do
    presentation = build_presentation("A", "B", "C")
    presentation.insert("B", Slide.new("D"))

    expect do
      presentation.play
    end.to output(<<~OUTPUT).to_stdout
      A
      B
      D
      C
    OUTPUT
  end

  it "1" do
    presentation = build_presentation("A", "B", "C")

    expect do
      presentation.play
    end.to output(<<~OUTPUT).to_stdout
      A
      B
      C
    OUTPUT
  end

  private

  def build_presentation(*slides_contents)
    slides = slides_contents.map do |slide_content|
      Slide.new(slide_content)
    end
    Presentation.new(slides)
  end
end

