
def sluggish_octopus(array)
    longest_fish = ''
    array.each do |fish_1|
        array.each do |fish_2|
            if fish_1.length > fish_2.length 
                longest_fish = fish_1
            else
                longest_fish = fish_2
            end
        end
    end
    longest_fish
end

# def dominant_octopus(array)
#     return array if array.size < 2
#     if array.first > array.last
#         dominant_octopus(array[0..-2])
#     else
#         dominant_octopus(array[1..-1])
#     end
# end

def clever_octopus(array)
    longest_fish = ''
    array.each { |fish| longest_fish = fish if fish.length > longest_fish.length }
    longest_fish
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish_octopus(array)
# p dominant_octopus(array)
# p clever_octopus(array)



def slow_dance(array)

end

def constant_dance(array)

end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]




