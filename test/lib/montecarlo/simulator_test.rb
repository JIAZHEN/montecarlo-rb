require 'minitest/autorun'
require 'montecarlo'

class TestSimulator < Minitest::Test
  def setup
    @dice_picker = MonteCarlo::HistogramRandomPicker.new({ 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1 })
  end
  
  def test_simulator_with_dice_picker
    simulator = MonteCarlo::Simulator.new(@dice_picker)
    trials = 100_000
    results = simulator.run(trials)
    assert_equal trials, results.values.sum
    6.times do |i|
      assert_in_delta 1.0/6, results[i+1]/trials.to_f, 0.01
    end
  end
end

