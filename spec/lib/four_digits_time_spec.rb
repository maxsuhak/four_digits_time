RSpec.describe FourDigitsTime do
  it 'returns valid times' do
    expect(
      described_class.valid_permutations(1, 2, 3, 4)
    ).to eq(
      'Valid times: 12:34, 12:43, 13:24, 13:42, 14:23, 14:32, 21:34, 21:43, 23:14 and 23:41'
    )
  end

  it 'returns no valid times' do
    expect(
      described_class.valid_permutations(9, 9, 9, 9)
    ).to eq(
      'There are no valid times can be displayed'
    )
  end
end
