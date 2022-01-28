require "coding_challenges/palindrome_linked_list"

RSpec.describe "Solution" do
  it "1" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(2,
            ListNode.new(1,
            ))))

    result = is_palindrome(head)

    expect(result).to eq(true)
  end

  it "2" do
    head =
      ListNode.new(1,
        ListNode.new(2,
        ))

    result = is_palindrome(head)

    expect(result).to eq(false)
  end

  it "3" do
    head =
      ListNode.new(1)

    result = is_palindrome(head)

    expect(result).to eq(true)
  end

  it "4" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(3,
          )))

    result = is_palindrome(head)

    expect(result).to eq(false)
  end

  it "5" do
    head =
      ListNode.new(3,
        ListNode.new(2,
          ListNode.new(3,
          )))

    result = is_palindrome(head)

    expect(result).to eq(true)
  end
end
