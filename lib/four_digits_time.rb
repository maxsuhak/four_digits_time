require 'time'

class FourDigitsTime
  class << self
    def valid_permutations(a, b, c, d)
      numbers = [a, b, c, d]

      permutations = numbers.permutation.map(&:join).uniq.sort

      times = permutations.map do |p|
        time_string = "#{p[0..1]}:#{p[2..4]}"

        time_string if time_valid?(time_string)
      end

      times.compact!

      print_times(times)
    end

    private

    def time_valid?(time_string)
      !Time.parse(time_string).nil?
    rescue ArgumentError
      false
    end

    def print_times(times)
      if times.size >= 2
        "Valid times: #{times[0...-1].join(', ')} and #{times.pop}"
      elsif times.any? && times.size < 2
        "Valid times: #{times.join(', ')}"
      else
        'There are no valid times can be displayed'
      end
    end
  end
end
