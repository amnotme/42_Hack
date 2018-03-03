def Memorize()
  geography={"Alabama": "Montgomery","Alaska": "Juneau","Arizona": "Phoenix","Arkansas": "Little Rock","California": "Sacramento","Colorado": "Denver","Connecticut": "Hartford","Delaware": "Dover","Florida": "Tallahassee","Georgia": "Atlanta","Hawaii": "Honolulu","Idaho": "Boise","Illinois": "Springfield","Indiana": "Indianapolis","Iowa": "Des Moines","Kansas": "Topeka","Kentucky": "Frankfort","Louisiana": "Baton Rouge","Maine": "Augusta","Maryland": "Annapolis","Massachusetts": "Boston","Michigan": "Lansing","Minnesota": "Saint Paul","Mississippi": "Jackson","Missouri": "Jefferson City","Montana": "Helena","Nebraska": "Lincoln","Nevada": "Carson City","New Hampshire": "Concord","New Jersey": "Trenton","New Mexico": "Santa Fe","New York": "Albany","North Carolina": "Raleigh","North Dakota": "Bismarck","Ohio": "Columbus","Oklahoma": "Oklahoma City","Oregon": "Salem","Pennsylvania": "Harrisburg","Rhode Island": "Providence","South Carolina": "Columbia","South Dakota": "Pierre","Tennessee": "Nashville","Texas": "Austin","Utah": "Salt Lake City","Vermont": "Montpelier","Virginia": "Richmond","Washington": "Olympia","West Virginia": "Charleston","Wisconsin": "Madison","Wyoming": "Cheyenne"}
  while (true)
    puts "Do you want to enter a state or capital?"
    preference=gets.chomp
    if preference=="state"
      puts "Ready: "
      state=gets.chomp
      if state=="Done"
        abort
      else
        capital=geography[:"#{state}"]
        puts capital
      end
    elsif preference=="capital"
      puts "Ready: "
      capital=gets.chomp
      if capital=="Done"
        abort
      else
        state=geography.key("#{capital}")
        puts state
      end
    else
      next
    end
  end
end

Memorize();
