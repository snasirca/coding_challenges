require 'rspec/autorun'

class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      iterate_quality(item)
      iterate_expires_in(item)
      apply_expired_penalty(item)
    end
  end

  private

  def iterate_quality(item)
    return if item.name == "Rock"

    if item.name != "Aged Brie"
      if item.quality > 0
        item.quality -= 1
        if item.name.start_with?("Conjured ")
          item.quality -= 1
        end
      end
    else
      item.quality = [item.quality + 2, 50].min
    end
  end

  def iterate_expires_in(item)
    return unless item.name != "Rock"

    item.expires_in = item.expires_in - 1
  end

  def apply_expired_penalty(item)
    if item.expires_in < 0
      if item.name != "Aged Brie"
        item.quality -= 1
        if item.name.start_with?("Conjured ")
          item.quality -= 1
        end
      else
        item.quality = 0
      end
    end
  end
end


# Please don't touch this class, I like it
# just the way it is
#                 -- Goblin in the corner
class Item
  attr_accessor :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    @name = name
    @expires_in = expires_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@expires_in}, #{@quality}"
  end
end

# Tests                                       *

RSpec.describe GildedRose do
  describe "#update_quality" do
    describe "a Conjured regular item" do
      before :each do
        items = [build_item("Conjured Sword", 1, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq 0
      end

      it "decreases quality by 2" do
        expect(@item.quality).to eq 8
      end
    end

    describe "a Conjured regular item that is expired" do
      before :each do
        items = [build_item("Conjured Sword", 0, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq -1
      end

      it "decreases quality by 4" do
        expect(@item.quality).to eq 6
      end
    end

    describe "a Legendary Rock" do
      before :each do
        items = [build_item("Rock", 0, 80)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "does not decrease expires_in" do
        expect(@item.expires_in).to eq 0
      end

      it "maintains quality" do
        expect(@item.quality).to eq 80
      end
    end

    describe "a regular item" do
      before :each do
        items = [build_item("foo", 1, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq 0
      end

      it "decreases quality by 1" do
        expect(@item.quality).to eq 9
      end
    end

    describe "an expired regular item" do
      before :each do
        items = [build_item("foo", 0, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq -1
      end

      it "decreases quality by 2" do
        expect(@item.quality).to eq 8
      end
    end

    describe "Aged Brie" do
      before :each do
        items = [build_item("Aged Brie", 1, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq 0
      end

      it "increases quality by 2" do
        expect(@item.quality).to eq 12
      end
    end

    describe "unexpired Aged Brie with nearly max quality" do
      before :each do
        items = [build_item("Aged Brie", 1, 49)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq 0
      end

      it "increases quality by 1" do
        expect(@item.quality).to eq 50
      end
    end

    describe "expired Aged Brie" do
      before :each do
        items = [build_item("Aged Brie", 0, 10)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq -1
      end

      it "decreases quality to 0" do
        expect(@item.quality).to eq 0
      end
    end

    describe "expired Aged Brie with max quality" do
      before :each do
        items = [build_item("Aged Brie", 0, 50)]
        GildedRose.new(items).update_quality()
        @item = items[0]
      end

      it "decreases expires_in by 1" do
        expect(@item.expires_in).to eq -1
      end

      it "decreases quality to 0" do
        expect(@item.quality).to eq 0
      end
    end
  end

  private

  def build_item(name, expires_in, quality)
    Item.new(name, expires_in, quality)
  end
end
#
#
