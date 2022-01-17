require "coding_challenges/first_bad_version"

RSpec.describe CodingChallenges::FirstBadVersion do
  subject { CodingChallenges::FirstBadVersion.new }

  it "1" do
    subject.bad = 4
    n = 5

    result = subject.first_bad_version(n)

    expect(result).to eq(4)
  end

  it "2" do
    subject.bad = 5
    n = 5

    result = subject.first_bad_version(n)

    expect(result).to eq(5)
  end

  it "3" do
    subject.bad = 1
    n = 1

    result = subject.first_bad_version(n)

    expect(result).to eq(1)
  end

  it "4" do
    subject.bad = 7
    n = 12

    result = subject.first_bad_version(n)

    expect(result).to eq(7)
  end

  it "5" do
    subject.bad = 8
    n = 12

    result = subject.first_bad_version(n)

    expect(result).to eq(8)
  end

  it "6" do
    subject.bad = 1
    n = 1

    result = subject.first_bad_version(n)

    expect(result).to eq(1)
  end

  it "7 - 20 - 1" do
    subject.bad = 1
    n = 2

    result = subject.first_bad_version(n)

    expect(result).to eq(1)
  end

  it "7" do
    iterations = 24
    iterations.times do |bad_index|
      puts "ITERATION bad: #{bad_index + 1}"
      bad = bad_index + 1
      subject.bad = bad
      n = iterations

      result = subject.first_bad_version(n)

      expect(result).to eq(bad)
    end
  end
end
