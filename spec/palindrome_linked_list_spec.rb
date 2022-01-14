require "coding_challenges/palindrome_linked_list"

RSpec.describe CodingChallenges::PalindromeLinkedList do
  subject { CodingChallenges::PalindromeLinkedList.new }

  class ListNode
    attr_accessor :val, :next

    def initialize(val, next_val = nil)
      @val = val
      @next = next_val
    end

    def to_s
      "{val: #{@val}, next: #{@next.val if @next}}"
    end
  end

  it "1" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(2,
            ListNode.new(1,
            ))))

    result = subject.is_palindrome(head)

    expect(result).to eq(true)
  end

  it "2" do
    head =
      ListNode.new(1,
        ListNode.new(2,
        ))

    result = subject.is_palindrome(head)

    expect(result).to eq(false)
  end

  it "3" do
    head =
      ListNode.new(1)

    result = subject.is_palindrome(head)

    expect(result).to eq(true)
  end

  it "4" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(3,
          )))

    result = subject.is_palindrome(head)

    expect(result).to eq(false)
  end

  it "5" do
    head =
      ListNode.new(3,
        ListNode.new(2,
          ListNode.new(3,
          )))

    result = subject.is_palindrome(head)

    expect(result).to eq(true)
  end
end
