require "coding_challenges/first_bad_version"

RSpec.describe "Solution" do
  xit "1" do
    bad = 4
    n = 5

    result = first_bad_version(n)

    expect(result).to eq(4)
  end

  xit "2" do
    bad = 5
    n = 5

    result = first_bad_version(n)

    expect(result).to eq(5)
  end

  xit "3" do
    bad = 1
    n = 1

    result = first_bad_version(n)

    expect(result).to eq(1)
  end

  xit "4" do
    bad = 7
    n = 12

    result = first_bad_version(n)

    expect(result).to eq(7)
  end

  xit "5" do
    bad = 8
    n = 12

    result = first_bad_version(n)

    expect(result).to eq(8)
  end

  xit "6" do
    bad = 1
    n = 1

    result = first_bad_version(n)

    expect(result).to eq(1)
  end

  xit "7 - 20 - 1" do
    bad = 1
    n = 2

    result = first_bad_version(n)

    expect(result).to eq(1)
  end

  xit "7" do
    iterations = 24
    iterations.times do |bad_index|
      puts "ITERATION bad: #{bad_index + 1}"
      bad = bad_index + 1
      bad = bad
      n = iterations

      result = first_bad_version(n)

      expect(result).to eq(bad)
    end
  end
end
