module MonteCarlo
  class HistogramRandomPicker
    # histogram is a hash where the keys are the possible outcomes and the values are the number of occurrences of each outcome.
    # For example, { 1 => 2, 2 => 3, 3 => 1 } means that the possible outcomes are 1, 2 and 3, and that 1 occurs twice, 2 occurs three times and 3 occurs once.
    def initialize(histogram)
      @histogram = histogram
      calculate_cumulative_occurrences!
    end

    def pick
      random_number = rand(@total_occurrences)
      found_cumulative = @cumulative_occurrences.bsearch { |cumulative| random_number < cumulative[:cumulative] }
      found_cumulative[:throughput]
    end

    private

    def calculate_cumulative_occurrences!
      @total_occurrences = 0
      @cumulative_occurrences = []
      @histogram.each do |outcome, occurrences|
        @total_occurrences += occurrences
        @cumulative_occurrences << { throughput: outcome, cumulative: @total_occurrences }
      end
    end
  end
end
