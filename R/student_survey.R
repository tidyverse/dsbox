#' Student survey
#'
#' During the first week of class in Spring 2015, students in an introductory
#' statistics course at Duke University came up with survey questions designed
#' to collect data on variables they are interested in working with throughout
#' the semester. Students answered these questions anonymously in an online
#' survey, and the resulting data are distributed here. Note that these data
#' are somewhat cleaned and potentially identifiable cases are removed.
#'
#' @format A tibble with 80 rows and 53 variables:
#' \describe{
#'   \item{pets}{How many pets do you have? Enter a positive whole number}
#'   \item{us_region}{What part of the US are you from? (New England, Mid-Atlantic, Midwest, Southwest, Southeast, California, Pacific Northwest, Not from the US)}
#'   \item{class_year}{What is your class year? (First-year, Sophomore, Junior, Senior)}
#'   \item{hair_color}{What color hair do you have? (Brown, Blonde, Black)}
#'   \item{campus}{What campus do you live on? (East, West, Central, Off campus)}
#'   \item{watch_sports}{What is your favorite sport to watch? (Basketball, Football, Soccer, Other, I dont watch sports)}
#'   \item{beyonce_love}{DO YOU LOVE BEYONCE? (hell yes, yes, meh, no, I don't care. \#teamnicki)}
#'   \item{fav_artist}{Who is your favorite artist? (Beyonce, Taylor swift, Kanye West, Kendrick Lamar, Florida-Georgia Line, none of these)}
#'   \item{social_network}{Favorite social network? (Facebook, Twitter, Instagram, Yikyak, Vine, Snapchat, Youtube, I don't use social media)}
#'   \item{relationship_status}{Are you currently in a relationship? (yes, no, it's complicated)}
#'   \item{num_siblings}{How many siblings do you have? Enter a positive whole number. If you are an only child, enter 0}
#'   \item{num_languages}{How many languages can you carry a conversation in? Enter a number 1 or above, since you at least speak your native language fluently}
#'   \item{nights_drinking}{How many times a week do you drink, on average?}
#'   \item{pbj_or_n}{Nutella, Peanut Butter, or Jelly? (Nutella, Peanut butter, Jelly, Some combination of two, All three, None)}
#'   \item{tenting}{What level of tenting are you doing? (none, black, blue, white, unsure)}
#'   \item{countries_visited}{How many countries have you visited excluding your home country?}
#'   \item{first_kiss}{How old were you when you had your first kiss? If you have yet to have your first kiss, enter NA. Otherwise, enter your age in years when you had your first kiss}
#'   \item{hours_watching_television}{How many hours of television do you watch per week (includes Netflix and online streaming)?}
#'   \item{perimeter}{Inside or Outside the Perimeter? (Inside, Outside, What even is the Perimeter, All of the Above)}
#'   \item{fav_campus_eatery}{What is your favorite on-campus eatery? (The Loop, Divinity Refectory, Edens Cafe (lol), Blue Express, Other, None of the above)}
#'   \item{fb_visits_per_day}{How many times do you go on Facebook per day? Enter a positive whole number. If you never visit Facebook, enter 0}
#'   \item{ac}{Does your house/apt/dorm have AC? (Yes, No)}
#'   \item{condiment}{If you were a condiment what would you be? (Soy Sauce, Ketchup, Sriracha, Honey Mustard, Maple Syrup)}
#'   \item{vegetarian}{Do you consider yourself a vegetarian? (Yes, No)}
#'   \item{voted_for_president}{Did you vote in last year's presidential election? (yes; no, I was not eligible due to age or citizenship status; no, I was eligible but chose not to vote)}
#'   \item{social_club}{What kind of social group do you belong to? (Greek life, SLG, Athletic Team, Independent)}
#'   \item{space_time}{Would you rather travel through outer space or time? (Outer space, Time)}
#'   \item{university_applications}{How many universities did you apply to? Enter a positive whole number 1 or above}
#'   \item{pizza_consumption}{How many pieces of pizza do you eat per week on average? Enter a positive whole number. If you never eat pizza, enter 0}
#'   \item{sick}{How many days were you sick in the past month? Enter a positive whole number. If you were never sick in the past month, enter 0}
#'   \item{games_attended}{How many basketball games did you attend in 2014? Enter a positive whole number. If you didn't attend any basketball games in 2014, enter 0}
#'   \item{pepsi_or_coke}{Pepsi or Coke? (Pepsi, Coke, No preference, Neither they're nasty)}
#'   \item{fav_friend_character}{Who is your favorite Friend? (Joey, Chandler, Monica, Rachel, Phoebe, Ross, Janice, Gunther)}
#'   \item{continents_visited}{How many continents have you been to?}
#'   \item{game_of_thrones}{Who shall rule the Realm? (House Targaryen, House Tyrell, House Stark, House Lannister, House Martell, House Greyjoy, I don't know what you are talking about)}
#'   \item{netflix_binge_show}{What is your Netflix binge show? (House of Cards, Gilmore Girls, Breaking Bad, How I Met Your Mother, Friends, Battlestar Galactica)}
#'   \item{chipotle_order}{What do you order at Chipotle? (Burrito Bowl, Quesadilla, Salad, Margarita (no food), Hard tacos, Soft tacos, Burrito)}
#'   \item{fav_pokemon}{What is your favorite pokemon? (Charizard, Blastoise, Venusaur, Jigglypuff, Rayquaza)}
#'   \item{first_tooth}{When did you lose your first tooth?}
#'   \item{fav_cheese}{What is your favorite cheese? (Blue, Goat, Feta, Cheddar, Pepperjack, Brie, None of the above)}
#'   \item{cat_or_dog}{Cat or Dog? (Cat, Dog, I'm not an animal person)}
#'   \item{fav_late_night_food}{What is your late night food of choice? (Pizza, Jimmy John's, Cosmic, Cookout, Pitchforks)}
#'   \item{fav_dessert_flavor}{What your favorite dessert flavor? (chocolate, vanilla, fruity, sour, sweet-and-salty, other, I don't eat dessert because I don't like fun)}
#'   \item{fav_off_campus_restaurant}{What is your favorite off-campus Restaurant? (Satisfactions, Cosmic, Harris Teeter's, Parker and Otis, Chamas, Chipotle)}
#'   \item{vending_machine}{Do you raid the vending machine at night? (Yes, No, Sometimes, Shhhhh...)}
#'   \item{multicultural}{Do you consider yourself multicultural? (Yes, No)}
#'   \item{smell}{Which smell do you prefer? (Pine, Clean Laundry, Pizza, Bakery, Old Spice/Axe/Perfume, Sharpie)}
#'   \item{parents_age}{What is the average age of your parents?}
#'   \item{marketplace_worst_meal}{What is Marketplace's worst meal? (chocolate covered crickets, salad bar, powdered eggs, the giant roasted hog, watery pasta)}
#'   \item{best_book_turned_show}{Favorite book series turned Movie or TV Show? (Harry Potter, Game of Thrones, Lord of the Rings-Hobbit, Hunger Games, Twilight)}
#'   \item{fav_fantasy_universe}{Favorite fantasy universe? (Legend of Zelda, Game of Thrones, Lord of the Rings, Harry Potter)}
#'   \item{hogwarts_house}{Which Harry Potter house do you belong to? (Gryffindor (because I'm a badass), Ravenclaw (because I'm better than you), Hufflepuff (because I'm good at something), Slytherin (because I'll cut you))}
#'   \item{shooters}{How often do you go to Shooters a month? Enter a positive whole number. Enter 0 if you never go to Shooters}
#' }
#' @examples
#' student_survey
"student_survey"
