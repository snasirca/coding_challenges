require "coding_challenges/longest_palindromic_substring"

RSpec.describe "Solution" do
  it "1" do
    s = "babad"

    result = longest_palindrome(s)

    expect(result).to eq("bab")
  end

  it "2" do
    s = "cbbd"

    result = longest_palindrome(s)

    expect(result).to eq("bb")
  end

  it "3" do
    s = "a"

    result = longest_palindrome(s)

    expect(result).to eq("a")
  end

  it "4" do
    s = "asdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfj"

    result = longest_palindrome(s)

    expect(result).to eq("asdffdsa")
  end

  it "5" do
    s = "tattarrattattattarrattattattarrattattattarasdfrattat"

    result = longest_palindrome(s)

    expect(result).to eq("tattarrattattattarrattattattarrattat")
  end

  it "6" do
    s = "asdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjasdfasdffkjjalkjjsadffasdffdsaasdfasdfjjalksdjfjaklsdfjxattarrattattattarrattattattarrattattattaasdfrattat"

    result = longest_palindrome(s)

    expect(result).to eq("attarrattattattarrattattattarratta")
  end

  it "7" do
    s = "vaomxdtiuwqlwhgutkhxxhccsgvyoaccuicgybnqnslogtqhblegfudagpxfvjdacsxgevvepuwthdtybgflsxjdmmfumyqgpxatvdypjmlapccaxwkuxkilqqgpihyepkilhlfkdrbsefinitdcaghqmhylnixidrygdnzmgubeybczjceiybowglkywrpkfcwpsjbkcpnvfbxnpuqzhotzspgebptnhwevbkcueyzecdrjpbpxemagnwmtwikmkpqluwmvyswvxghajknjxfazshsvjkstkezdlbnkwxawlwkqnxghjzyigkvqpapvsntojnxlmtywdrommoltpbvxwqyijpkirvndwpgufgjelqvwffpuycqfwenhzrbzbdtupyutgccdjyvhptnuhxdwbmdcbpfvxvtfryszhaakwshrjseonfvjrrdefyxefqfvadlwmedpvnozobftnnsutegrtxhwitrwdpfienhdbvvykoynrsbpmzjtotjxbvemgoxreiveakmmbbvbmfbbnyfxwrueswdlxvuelbkrdxlutyukppkzjnmfmclqpkwzyylwlzsvriwomchzzqwqglpflaepoxcnnewzstvegyaowwhgvcwjhbbstvzhhvghigoazbjiikglbqlxlccrwqvyqxpbtpoqjliziwmdkzfsrqtqdkeniulsavsfqsjwnvpprvczcujihoqeanobhlsvbzmgflhykndfydbxatskf"

    result = longest_palindrome(s)

    expect(result).to eq("jtotj")
  end
end
