defmodule Mylist do
  def filter([], func, f_array), do: f_array
  def filter([head|tail], func, f_array // []) do
    if func.(head) do
       filter(tail, func, List.concat(f_array , [head]))
    else
      filter(tail, func, List.concat(f_array , []))
    end
  end

  def sum([], total), do: total
  def sum([head|tail], total // 0), do: sum(tail, head+total)

  def mapsum([], func, f_array) do
    sum(f_array)
  end
  def mapsum([head | tail], func, f_array // []) do
    mapsum(tail, func, List.concat(f_array, [func.(head)]))
  end

  def max_number([], max_value) do
    max_value
  end
  def max_number([head | tail], max_value // 0) do
    max_number(tail, if head > max_value, do: head, else: max_value)
  end
end
