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
#' \item{pets}{How many pets do you have? Enter a positive whole number.}
#' \item{us_region}{What part of the US are you from? (\code{New England}, \code{Mid-Atlantic}, \code{Midwest}, \code{Southwest}, \code{Southeast}, \code{California}, \code{Pacific Northwest}, \code{Not from the US})}
#' \item{class_year}{What is your class year? (\code{First-year}, \code{Sophomore}, \code{Junior}, \code{Senior})}
#' \item{hair_color}{What color hair do you have? (\code{Brown}, \code{Blonde}, \code{Black})}
#' \item{campus}{What campus do you live on? (\code{East}, \code{West}, \code{Central}, \code{Off campus})}
#' \item{watch_sports}{What is your favorite sport to watch? (\code{Basketball}, \code{Football}, \code{Soccer}, \code{Other}, \code{I don't watch sports})}
#' \item{beyonce_love}{DO YOU LOVE BEYONCE? (\code{hell yes}, \code{yes}, \code{meh}, \code{no}, \code{I don't care. #teamnicki})}
#' \item{fav_artist}{Who is your favorite artist? (\code{Beyonce}, \code{Taylor swift}, \code{Kanye West}, \code{Kendrick Lamar}, \code{Florida-Georgia Line}, \code{none of these})}
#' \item{social_network}{Favorite social network? (\code{Facebook}, \code{Twitter}, \code{Instagram}, \code{Yikyak}, \code{Vine}, \code{Snapchat}, \code{Youtube}, \code{I don't use social media})}
#' \item{relationship_status}{Are you currently in a relationship? (\code{yes}, \code{no}, \code{it's complicated})}
#' \item{num_siblings}{How many siblings do you have? Enter a positive whole number. If you are an only child, enter 0.}
#' \item{num_languages}{How many languages can you carry a conversation in? Enter a number 1 or above, since you at least speak your native language fluently.}
#' \item{nights_drinking}{How many times a week do you drink, on average?}
#' \item{pbj_or_n}{Nutella, Peanut Butter, or Jelly? (\code{Nutella}, \code{Peanut butter}, \code{Jelly}, \code{Some combination of two}, \code{All three}, \code{None})}
#' \item{tenting}{What level of tenting are you doing? (\code{none}, \code{black}, \code{blue}, \code{white}, \code{unsure})}
#' \item{countries_visited}{How many countries have you visited excluding your home country?}
#' \item{first_kiss}{How old were you when you had your first kiss? If you have yet to have your first kiss, enter NA. Otherwise, enter your age in years when you had your first kiss.}
#' \item{hours_watching_television}{How many hours of television do you watch per week (includes Netflix and online streaming)?}
#' \item{perimeter}{Inside or Outside the Perimeter? (\code{Inside}, \code{Outside}, \code{What even is the Perimeter}, \code{All of the Above})}
#' \item{fav_campus_eatery}{What is your favorite on-campus eatery? (\code{The Loop}, \code{Divinity Refectory}, \code{Edens Cafe (lol)}, \code{Blue Express}, \code{Other}, \code{None of the above})}
#' \item{fb_visits_per_day}{How many times do you go on Facebook per day? Enter a positive whole number. If you never visit Facebook, enter 0.}
#' \item{ac}{Does your house/apt/dorm have AC? (\code{Yes}, \code{No})}
#' \item{condiment}{If you were a condiment what would you be? (\code{Soy Sauce}, \code{Ketchup}, \code{Sriracha}, \code{Honey Mustard}, \code{Maple Syrup})}
#' \item{vegetarian}{Do you consider yourself a vegetarian? (\code{Yes}, \code{No})}
#' \item{voted_for_president}{Did you vote in last year's presidential election? (\code{yes}, \code{no, I was not eligible due to age or citizenship status}, \code{no, I was eligible but chose not to vote})}
#' \item{social_club}{What kind of social group do you belong to? (\code{Greek life}, \code{SLG}, \code{Athletic Team}, \code{Independent})}
#' \item{space_time}{Would you rather travel through outer space or time? (\code{Outer space}, \code{Time})}
#' \item{university_applications}{How many universities did you apply to? Enter a positive whole number 1 or above.}
#' \item{pizza_consumption}{How many pieces of pizza do you eat per week on average? Enter a positive whole number. If you never eat pizza, enter 0.}
#' \item{sick}{How many days were you sick in the past month? Enter a positive whole number. If you were never sick in the past month, enter 0.}
#' \item{games_attended}{How many basketball games did you attend in 2014? Enter a positive whole number. If you didn't attend any basketball games in 2014, enter 0.}
#' \item{pepsi_or_coke}{Pepsi or Coke? (\code{Pepsi}, \code{Coke}, \code{No preference}, \code{Neither they're nasty})}
#' \item{fav_friend_character}{Who is your favorite Friend? (\code{Joey}, \code{Chandler}, \code{Monica}, \code{Rachel}, \code{Phoebe}, \code{Ross}, \code{Janice}, \code{Gunther})}
#' \item{continents_visited}{How many continents have you been to?}
#' \item{game_of_thrones}{Who shall rule the Realm? (\code{House Targaryen}, \code{House Tyrell}, \code{House Stark}, \code{House Lannister}, \code{House Martell}, \code{House Greyjoy}, \code{I don't know what you are talking about})}
#' \item{netflix_binge_show}{What is your Netflix binge show? (\code{House of Cards}, \code{Gilmore Girls}, \code{Breaking Bad}, \code{How I Met Your Mother}, \code{Friends}, \code{Battlestar Galactica})}
#' \item{chipotle_order}{What do you order at Chipotle? (\code{Burrito Bowl}, \code{Quesadilla}, \code{Salad}, \code{Margarita (no food)}, \code{Hard tacos}, \code{Soft tacos}, \code{Burrito})}
#' \item{fav_pokemon}{What is your favorite pokemon? (\code{Charizard}, \code{Blastoise}, \code{Venusaur}, \code{Jigglypuff}, \code{Rayquaza})}
#' \item{first_tooth}{When did you lose your first tooth?}
#' \item{fav_cheese}{What is your favorite cheese? (\code{Blue, Goat}, \code{Feta}, \code{Cheddar}, \code{Pepperjack}, \code{Brie}, \code{None of the above})}
#' \item{cat_or_dog}{Cat or Dog? (\code{Cat}, \code{Dog}, \code{I'm not an animal person})}
#' \item{fav_late_night_food}{What is your late night food of choice? (\code{Pizza}, \code{Jimmy John's}, \code{Cosmic}, \code{Cookout}, \code{Pitchforks})}
#' \item{fav_dessert_flavor}{What your favorite dessert flavor? (\code{chocolate}, \code{vanilla}, \code{fruity}, \code{sour}, \code{sweet-and-salty}, \code{other}, \code{I don't eat dessert because I don't like fun})}
#' \item{fav_off_campus_restaurant}{What is your favorite off-campus Restaurant? (\code{Satisfactions}, \code{Cosmic}, \code{Harris Teeter's}, \code{Parker and Otis}, \code{Chamas}, \code{Chipotle})}
#' \item{vending_machine}{Do you raid the vending machine at night? (\code{Yes}, \code{No}, \code{Sometimes}, \code{Shhhhh...})}
#' \item{multicultural}{Do you consider yourself multicultural? (\code{Yes}, \code{No})}
#' \item{smell}{Which smell do you prefer? (\code{Pine}, \code{Clean Laundry}, \code{Pizza}, \code{Bakery}, \code{Old Spice/Axe/Perfume}, \code{Sharpie})}
#' \item{parents_age}{What is the average age of your parents?}
#' \item{marketplace_worst_meal}{What is Marketplace's worst meal?
#' (\code{chocolate covered crickets}, \code{salad bar}, \code{powdered eggs}, \code{the giant roasted hog}, \code{watery pasta})}
#' \item{best_book_turned_show}{Favorite book series turned Movie or TV Show?
#' (\code{Harry Potter}, \code{Game of Thrones}, \code{Lord of the Rings-Hobbit}, \code{Hunger Games}, \code{Twilight})}
#' \item{fav_fantasy_universe}{Favorite fantasy universe?
#' (\code{Legend of Zelda}, \code{Game of Thrones}, \code{Lord of the Rings}, \code{Harry Potter})}
#' \item{hogwarts_house}{Which Harry Potter house do you belong to?
#' (\code{Gryffindor (because I'm a badass)}, \code{Ravenclaw (because I'm better than you)}, \code{Hufflepuff (because I'm good at something)}, \code{Slytherin (because I'll cut you)})}
#' \item{shooters}{How often do you go to Shooters a month? Enter a positive whole number. Enter 0 if you never go to Shooters.}
#' }
#' @examples
#' student_survey
"student_survey"
