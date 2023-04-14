class DinosaurCollector
  def toy_collecting(toys_positions, dino_position, battery)
    visited = [dino_position]
    toys_collected = []
    distance_traveled = 0

    while toys_positions.any? && battery > 0
      closest_toy = toys_positions.min_by { |toy| distance(dino_position, toy) }

      distance_to_closest_toy = distance(dino_position, closest_toy)

      break unless closest_toy && battery >= distance_to_closest_toy

      toys_collected << closest_toy
      toys_positions.delete(closest_toy)
      dino_position = closest_toy
      visited << dino_position
      distance_traveled += distance(visited[-2], visited[-1])
      battery -= distance_to_closest_toy
    end

    [visited, toys_collected.size, battery.round(2)]
  end

  private

  def distance(a, b)
    Math.hypot((a&.[](0) - b&.[](0)), (a&.[](1) - b&.[](1)))
  end
end
