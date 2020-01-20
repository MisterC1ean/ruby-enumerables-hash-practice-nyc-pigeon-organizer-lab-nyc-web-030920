def nyc_pigeon_organizer(data)
pigeon_list = {} #create an empty hash for new NDS
  data.each do |attribute_name, attributes|#data is a hash which has key value pairs. those keys represent an atribute name i.e color and a value of attributes i.e brown
    attributes.each do |attribute_value, pigeon_names| #attribute ie brown is a key with a value of pigeon_name ie Alex
      pigeon_names.each do |name| #pigeon_names is the value we are looking for so lets do something with it

        if pigeon_list[name] == nil
          pigeon_list[name] = {} #when the name doesnt exist make a hash with the name as the key and an empty hash as the value
        end
        if pigeon_list[name][attribute_name] == nil
          pigeon_list[name][attribute_name] = [] #no attribute (color) add it and make its value an empty array to fill with goodies
        end
        pigeon_list[name][attribute_name].push(attribute_value.to_s) # take all that juicy data and add it to the empty attribute arrays we just made
end
end
end
pigeon_list # sit back and feed the pigeons.
end