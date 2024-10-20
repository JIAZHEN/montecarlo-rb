require 'minitest/autorun'
require 'montecarlo'

class TestSimulator < Minitest::Test
  def setup
    @trials = 100_000
    @dice_picker = MonteCarlo::HistogramRandomPicker.new({ 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1 })
  end
  
  def test_simulator_with_dice_picker
    simulator = MonteCarlo::Simulator.new(@dice_picker)
    results = simulator.run(@trials)
    assert_equal @trials, results.values.sum
    6.times do |i|
      assert_in_delta 1.0/6, results[i+1]/@trials.to_f, 0.01
    end
  end

  def test_simulator_with_histogram_picker
    picker = MonteCarlo::HistogramRandomPicker.new({
      0 => 10,
      1 => 10,
      2 => 20,
      3 => 30,
      4 => 20
    })
    simulator = MonteCarlo::Simulator.new(picker)
    results = simulator.run(@trials)
    assert_equal @trials, results.values.sum
    assert_in_delta 0.1, results[0]/@trials.to_f, 0.1
    assert_in_delta 0.1, results[1]/@trials.to_f, 0.1
    assert_in_delta 0.2, results[2]/@trials.to_f, 0.1
    assert_in_delta 0.3, results[3]/@trials.to_f, 0.1
    assert_in_delta 0.2, results[4]/@trials.to_f, 0.1
  end
end

