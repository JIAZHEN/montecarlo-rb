# Montecarlo simulation

MonteCarloRB is a Ruby library designed to perform Monte Carlo simulations based on historical data distributions. It allows you to input probabilities with frequencies and simulate outcomes thousands of times. This is especially useful for scenarios where future outcomes depend on historical trends or distributions.

## Features

Monte Carlo simulation: Run thousands of simulations for any probability-based scenario.
Customizable probabilities: Input historical data with frequencies to shape the simulation.

Installation
Add this line to your application's Gemfile:

```ruby
gem 'monte_carlo'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```ruby
gem install monte_carlo
```

## Usage

## Basic Simulation Example

Suppose you have historical data representing daily engineering throughput (e.g., number of tasks completed per day) over the past few months. You can use this data to simulate possible throughput for the next 30 days.

DiceRoller is a Ruby class that simulates rolling a six-sided die. It has a method called `roll` that returns a random number between 1 and 6.

```ruby
  dice_picker = MonteCarlo::HistogramRandomPicker.new({ 1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1 })
  simulator = MonteCarlo::Simulator.new(@dice_picker)
  results = simulator.run(@trials)
  puts results
  # => {1=>0.16666666666666666, 2=>0.16666666666666666, 3=>0.16666666666666666, 4=>0.16666666666666666, 5=>0.16666666666666666, 6=>0.16666666666666666}
```