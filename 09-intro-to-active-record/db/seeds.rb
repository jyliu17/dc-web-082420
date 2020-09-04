Author.destroy_all

Author.find_or_create_by(name: "Joanne Kathleen Rowling", 
              favorite_colour: "green", 
              penname: "J.K. Rowling")

Author.find_or_create_by(name: "Chloe Ardelia Wofford",
              favorite_colour: "red",
              penname: "Toni Morrison")

Author.find_or_create_by(name: "Tom Clancy")

Author.find_or_create_by(name: "Mary Shelley",
              favorite_colour: "green")