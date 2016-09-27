

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  #get a list of pigeons
  list_names=[]
  pigeon_list={}

  data.each do |char,charhash|
    charhash.each do |chardet,names|
      names.each do |name|
        list_names<<name
      end
    end
  end
  list_names.uniq
    list_names.each do |name|
      pigeon_list[name]={}
    end
    #take all characteristics and add them as a key to each names' hash with value of empty hash

    data.each do |char, charhash|
      pigeon_list["Theo"][char]=[]
      pigeon_list["Peter Jr."][char]=[]
      pigeon_list["Lucky"][char]=[]
      pigeon_list["Ms. K"][char]=[]
      pigeon_list["Queenie"][char]=[]
      pigeon_list["Andrew"][char]=[]
      pigeon_list["Alex"][char]=[]
    end
    #go into charhash, and then into chardet array(names) and see if the value includes the name
    data.each do |char,charhash|
      charhash.each do |chardet,names|
        if names.include?("Theo")
          pigeon_list["Theo"][char]<<[chardet.to_s]
          pigeon_list["Theo"][char].flatten!
        end
        if names.include?("Peter Jr.")
          pigeon_list["Peter Jr."][char]<<[chardet.to_s]
          pigeon_list["Peter Jr."][char].flatten!
        end
        if names.include?("Lucky")
          pigeon_list["Lucky"][char]=[chardet.to_s]
          pigeon_list["Lucky"][char].flatten!
        end
        if names.include?("Ms. K")
          pigeon_list["Ms. K"][char]<<[chardet.to_s]
          pigeon_list["Ms. K"][char].flatten!
        end
        if names.include?("Queenie")
          pigeon_list["Queenie"][char]<<[chardet.to_s]
          pigeon_list["Queenie"][char].flatten!
        end
        if names.include?("Andrew")
          pigeon_list["Andrew"][char]<<[chardet.to_s]
          pigeon_list["Andrew"][char].flatten!
        end
        if names.include?("Alex")
          pigeon_list["Alex"][char]<<[chardet.to_s]
          pigeon_list["Alex"][char].flatten!


      #  elsif names.include?("Peter Jr.")
      #    pigeon_list["Peter Jr."][char]=[chardet]
        end
      end
    end


  print pigeon_list
  pigeon_list
end


nyc_pigeon_organizer(pigeon_data)








#A.Problem Solving
#rephrase the problem
#think of a way to solve the problem without Code
#think of an analogy and it would work in real life

#B.Translating this into Code
#Reject information - just to get to core
#Coerce - think about the data structure that we want

#general tactics
#making problem less abstract with comment tags
#puts, binding.pry
#write a comment of what the data out puts at a certain point
#really understand the data structure
