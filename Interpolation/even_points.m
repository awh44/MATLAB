function [points] = even_points(lower, upper, num)
    points = lower:(upper - lower) / (num - 1):upper;
end

