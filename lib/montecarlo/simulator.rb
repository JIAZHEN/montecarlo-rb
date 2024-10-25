require 'parallel'

module MonteCarlo
  class Simulator
    def initialize(picker)
      @picker = picker
    end

    def run(n_times = 1_000_000, threads = 1_000)
      picks = Parallel.map(1..n_times, in_threads: threads) do
        @picker.pick
      end

      picks.group_by { |pick| pick }.transform_values(&:size)
    end
  end
end
