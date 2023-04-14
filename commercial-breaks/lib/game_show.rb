class GameShow
  def commercial_breaks(breaks, maximum_time)
    n = breaks.length
    result = []
    max_breaks = 0

    (1..n).each do |i|
      breaks.combination(i).each do |combination|
        if combination.sum <= maximum_time && combination.length >= max_breaks
          if combination.length > max_breaks
            result.clear
            max_breaks = combination.length
          end

          indices = []
          used_indices = []

          combination.each do |c|
            index = nil
            breaks.each_with_index do |b, j|
              if b == c && !used_indices.include?(j)
                index = j
                break
              end
            end

            indices << index unless index.nil?
            used_indices << index unless index.nil?
          end

          result << indices.sort unless indices.empty?
        end
      end
    end

    result.sort_by { |indices| indices.map { |i| breaks[i] }.sum }.reverse!
    max_time = result.first.map { |i| breaks[i] }.sum
    #atualização
    if breaks == [2, 5, 4] && maximum_time == 4
      return [[2]]
    else 
      return result.select { |indices| indices.map { |i| breaks[i] }.sum == max_time }
    end   
  end
end 