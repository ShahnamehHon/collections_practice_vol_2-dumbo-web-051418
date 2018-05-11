def begins_with_r(arr)
  return arr.all? { |word| word[0] == 'r'}
end

def contain_a(arr)
  return arr.select { |word| word.include?('a')}
end

def first_wa(arr)
  return arr.find { |el| el.to_s.include?('wa')}
end

def remove_non_strings(arr)
  return arr.delete_if { |e| !e.kind_of?(String)}
end

def count_elements(arr)
  arr.group_by(&:itself).collect { |key, value| key.merge({:count => value.length})}
end

def merge_data(keys, data)
  keys.collect { |names| names.merge(data[0][names[:first_name]])}
end

def find_cool(arr)
  search = arr.collect { |hash| hash if hash.has_value?('cool') }
  search.compact
end

def organize_schools(schools)
  organized_school = Hash.new
  schools.each { |key, val| if organized_school[val[:location]] == nil
      organized_school[val[:location]] = [] << key
    else
      organized_school[val[:location]] << key }
 organized_school
end
end
