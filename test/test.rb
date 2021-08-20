require "minitest/autorun"
require "./lib/ikonic"

describe Ikonic do
  it "should render an icon" do
    expect(Ikonic.icon('ban'))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-ban.svg')
      )
  end

  it "should render an icon with specified stroke-width" do
    expect(Ikonic.icon('cash', { width: 1 }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-outline-width-1-cash.svg')
      )
  end

  it "should render an icon with specified style" do
    expect(Ikonic.icon('bookmark-alt', { size: 20, width: 1, style: 'solid' }))
      .must_equal File.read(
        File.join(__dir__, 'results/heroicon-solid-bookmark-alt.svg')
      )
  end  
end