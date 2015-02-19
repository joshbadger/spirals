require_relative '../spirals'

describe '#spirals' do
  it "given a width of 2 and a start of 1 returns a 2x2 spiraled array" do
    width = 2
    start = 1

    output = [
      [1,2],
      [4,3]
    ]
    expect(spirals(start, width)).to eq(output)
  end

  it "given a width of 5 and a start of 5 returns a 5x5 spiraled array" do
    width = 5
    start = 5

    output = [
      [ 5, 6, 7, 8, 9],
      [20,21,22,23,10],
      [19,28,29,24,11],
      [18,27,26,25,12],
      [17,16,15,14,13],
    ]
    expect(spirals(start, width)).to eq(output)
  end

  it "can handle larger arrays like a 10x10 starting at 10" do
    width = 10
    start = 10

    output = [
      [10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
      [45, 46, 47, 48, 49, 50, 51, 52, 53, 20],
      [44, 73, 74, 75, 76, 77, 78, 79, 54, 21],
      [43, 72, 93, 94, 95, 96, 97, 80, 55, 22],
      [42, 71, 92,105,106,107, 98, 81, 56, 23],
      [41, 70, 91,104,109,108, 99, 82, 57, 24],
      [40, 69, 90,103,102,101,100, 83, 58, 25],
      [39, 68, 89, 88, 87, 86, 85, 84, 59, 26],
      [38, 67, 66, 65, 64, 63, 62, 61, 60, 27],
      [37, 36, 35, 34, 33, 32, 31, 30, 29, 28]
    ]
    expect(spirals(start,width)).to eq(output)
  end

  it "given a width > 0 and a start of 0 returns a spiraled array starting with 0" do
    width = 3
    start = 0

    output = [
      [0,1,2],
      [7,8,3],
      [6,5,4]
    ]
    expect(spirals(start,width)).to eq(output)
  end

  it "given a width of 0 and a start > 0 returns an empty array" do
    width = 0
    start = 7

    output = []
    expect(spirals(start,width)).to eq(output)
  end

  it "given a width of 0 and a start of 0 returns an empty array" do
    width = 0
    start = 0

    output = []
    expect(spirals(start,width)).to eq(output)
  end
end
