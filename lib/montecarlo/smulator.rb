module MonteCarlo
  class Smulator
    def initialize(picker)
      @picker = picker
    end

    def run(n_times = 10_000)
      result_counts = Hash.new(0)
      n_times.times do
        result = @picker.pick
        result_counts[result] += 1
      end
      result_counts
    end
  end
end
