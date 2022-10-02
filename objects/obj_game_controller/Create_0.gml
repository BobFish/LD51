//init leaderboard
randomize();
LootLockerInitialize("REMOVEDFORGITHUB", "REMOVEDFORGITHUB", true, REMOVEDFORGITHUB)

// Create the grid
scr_create_kitchen_grid(0, 150)

//Initial variables
currentHeldQuantity = 0;
currentOrderTypeFoodOrDrink = "";
currentHeldFood = "";
currentHeldSize = "";
currentlyHeldCookingProcess = "";
createdItems = [];
createdItemsDisplayed = [];
unlockedLetters = [];
currentOrderNumber = 1;
orders = [];
cookingMode = true; //if in cooking mode or order mode
FKeyHeldDown = 0;

currentSuccessfulOrders = 0;

//Time variables
currentDay = 1;
currentHour = 10;
currentMinute = 0;
currentSecond = 0;
stringCurrentMinute = "00";
dayStarted = false;
maxHour = 16; // PUT BACK TO 16 24-hour time hour of the time to end the day.


//States of things that needed to be waited on
itemBeingMade = false;
itemBeingPackaged = false;

//alarm_set(2, 60*10);

create_textevent(
[                                                                                              //myText
	"Before you ask, yes I made 90% of art in the last hour of the competition at 7am :(",
	"Thankfully you only need the letters to tell which is which :)",
	"You are running a Fish n Chips restaurant with a bit of a weird menu.",
	"Every 10 seconds you are going to get a new order.",
	"Your goal is to correctly make as many orders as you can in a week.",
	"At the end of Friday you'll be given a score that'll be uploaded to the leaderboard.",
	"This game is played entirely with a keyboard and requires function keys,",
	"so hopefully you aren't on a keyboard that doesn't have them!",
	"Lets practice making something!",
	"You've unlocked Chips",
	"You've unlocked Deep Fryer",
	"You've unlocked Water",
	"You've unlocked Small Cup",
	"As you can see each key represents either a part of a food product,",
	"including the food itself and ways to cook it or different sizes.",
	"Lets Try making 1 fried chips, you do this by holding",
	"down the 1, F and C keys and, without releasing them, pressing enter. Do this now",
	"as you can see it takes a few seconds to make and then shows up",
	"on the side of the screen.",
	"While making something you can't make anything else,",
	"so save time by making multiple at once if the order requires that!",
	"Lets make 2 small waters now. Hold 2, S and W then press enter.",
	"You can only have a maximum of 10 items made, if you try to make more it won't let you.",
	"Feel free to test this by trying to make 9 fried chips or 9 small waters",
	"Final couple of things. Firstly, You can remove the bottom item by pressing backspace.",
	"And finally you submit an order by pressing its corresponding Function key, they'll show at the top.",
	"Each day you will unlock new items to make it more complicated, good luck and have fun!",
	"Day 1 - Monday"
],
-1,                                                       //mySpeakers
-1,   //myEffects
-1,                                                                                            //myTextSpeed
-1,                                                                   //myTypes
-1,                                                            //myNextLine
[-1,-1,-1,-1,-1,-1,-1,-1,[scr_unlock_key, "C"],[scr_unlock_key, "F"],[scr_unlock_key, "W"],[scr_unlock_key, "S"],[scr_unlock_key, "T"],-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1, [scr_start_day]],                                                                                            //myScripts
-1,                                                                                            //myTextCol
-1,                                                                   //myEmotion
-1                                                                                             //myEmote
);