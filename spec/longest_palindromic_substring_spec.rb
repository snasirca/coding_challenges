require "coding_challenges/longest_palindromic_substring"

RSpec.describe CodingChallenges::LongestPalindromicSubstring do
  subject { CodingChallenges::LongestPalindromicSubstring.new }

  it "1" do
    s = "babad"

    result = subject.longest_palindrome(s)

    expect(result).to eq("bab")
  end

  it "2" do
    s = "cbbd"

    result = subject.longest_palindrome(s)

    expect(result).to eq("bb")
  end

  it "3" do
    s = "a"

    result = subject.longest_palindrome(s)

    expect(result).to eq("a")
  end

  it "4" do
    s = "asdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfj"

    result = subject.longest_palindrome(s)

    expect(result).to eq("asdffdsa")
  end

  it "5" do
    s = "tattarrattattattarrattattattarrattattattarasdfrattat"

    result = subject.longest_palindrome(s)

    expect(result).to eq("tattarrattattattarrattattattarrattat")
  end

  it "6" do
    s = "asdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjxattarrattattattarrattattattarrattattattaasdfrattat"

    result = subject.longest_palindrome(s)

    expect(result).to eq("attarrattattattarrattattattarratta")
  end

  it "7" do
    s = "vaomxdtiuwqlwhgutkhxxhccsgvyoaccuicgybnqnslogtqhblegfudagpxfvjdacsxgevvepuwthdtybgflsxjdmmfumyqgpxatvdypjmlapccaxwkuxkilqqgpihyepkilhlfkdrbsefinitdcaghqmhylnixidrygdnzmgubeybczjceiybowglkywrpkfcwpsjbkcpnvfbxnpuqzhotzspgebptnhwevbkcueyzecdrjpbpxemagnwmtwikmkpqluwmvyswvxghajknjxfazshsvjkstkezdlbnkwxawlwkqnxghjzyigkvqpapvsntojnxlmtywdrommoltpbvxwqyijpkirvndwpgufgjelqvwffpuycqfwenhzrbzbdtupyutgccdjyvhptnuhxdwbmdcbpfvxvtfryszhaakwshrjseonfvjrrdefyxefqfvadlwmedpvnozobftnnsutegrtxhwitrwdpfienhdbvvykoynrsbpmzjtotjxbvemgoxreiveakmmbbvbmfbbnyfxwrueswdlxvuelbkrdxlutyukppkzjnmfmclqpkwzyylwlzsvriwomchzzqwqglpflaepoxcnnewzstvegyaowwhgvcwjhbbstvzhhvghigoazbjiikglbqlxlccrwqvyqxpbtpoqjliziwmdkzfsrqtqdkeniulsavsfqsjwnvpprvczcujihoqeanobhlsvbzmgflhykndfydbxatskf"

    result = subject.longest_palindrome(s)

    expect(result).to eq("jtotj")
  end
end
