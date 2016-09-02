# scrabble module
require 'awesome_print'

module Scrabble
    MAX_LETTERS = 7

    MAX_SCORE = 100

    LETTER_SCORE = {
       ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"] => 1,
       ["D", "G"] => 2,
       ["B", "C", "M", "P"] => 3,
       ["F", "H", "V", "W", "Y"] => 4,
       ["K"] => 5,
       ["J", "X"] => 8,
       ["Q", "Z"] => 10
   }

    TILES = [
        ["A", "A", "A", "A", "A", "A", "A", "A", "A"],
        ["B", "B"],
        ["C", "C"],
        ["D", "D", "D", "D"],
        ["E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E"],
        ["F", "F"],
        ["G", "G", "G"],
        ["H", "H"],
        ["I", "I", "I", "I", "I", "I", "I", "I", "I"],
        ["J"],
        ["K"],
        ["L", "L", "L", "L"],
        ["M", "M"],
        ["N", "N", "N", "N", "N", "N"],
        ["O", "O", "O", "O", "O", "O", "O", "O"],
        ["P", "P"],
        ["Q"],
        ["R", "R", "R", "R", "R", "R"],
        ["S", "S", "S", "S"],
        ["T", "T", "T", "T", "T", "T"],
        ["U", "U", "U", "U"],
        ["V", "V"],
        ["W", "W"],
        ["X"],
        ["Y", "Y"],
        ["Z"]
    ]

    WORDS = ["JUMP", "MONKEY", "DONKEY", "JAZZILY", "PAZAZZ", "WORD", "ZACK", "JAX", "AGE", "ASK", "BABY", "BASE", "BESIDE", "BRIGHT", "BUSINESS", "BUY", "CASE", "CATCH", "CAUGHT", "CAUGHTCHOOSE", "CIRCLE", "CLEAR", "COLOR", "CHILD", "COPY", "CORRECT", "COULDN'T", "DIFFERENCE", "DIRECTION", "DRIED", "EASILY", "EDGE", "EGG", "EIGHT", "ENERGY", "ENGLAND", "ESPECIALLY", "EUROPE", "EXACTLY", "EXCEPT", "EXPLAIN", "FAMOUS", "FARM", "FELL", "FIGURE", "FLAT", "FLY", "FOREST", "FREE", "FRENCH", "FUN", "GEORGE", "GOVERNMENT", "GRASS", "GREW", "HAIR", "HAPPY", "HE'S", "HEAT", "HISTORY", "HUMAN", "I'VE", "INCH", "INFORMATION", "IRON", "JIM", "JOE", "KING", "LARGER", "LATE", "LEG", "LENGTH", "LISTEN", "LOST", "LOT", "LOWER", "MACHINE", "MARK", "MAYBE", "MEASURE", "MEET", "MIDDLE", "MILK", "MINUTE", "MODERN", "MOMENT", "MONTH", "MOUTH", "NATURAL", "NEARLY", "NECESSARY", "NEW", "YORK", "NORTH", "OBJECT", "OCEAN", "OIL", "PAY", "PER", "PLAN", "PLANE", "PRESENT", "PRODUCT", "RATHER", "REACH", "REASON", "RECORD", "RUNNING", "SEEMS", "SENT", "SEVEN", "SHAPE", "SIDES", "SINGLE", "SKIN", "SLEEP", "SMALLER", "SOFT", "SOIL", "SOUTH", "SPEAK", "SPEED", "SPRING", "SQUARE", "STAR", "STEP", "STORE", "STRAIGHT", "STRANGE", "STREET", "SUBJECT", "SUPPOSE", "TEACHER", "THOUSAND", "THUS", "TOM", "TRAVEL", "TRIP", "TROUBLE", "UNIT", "VILLAGE", "WALL", "WAR", "WASN'T", "WEEK", "WHOSE", "WINDOW", "WISH", "WOMEN", "WON'T", "WOOD", "WROTE", "YELLOW", "YOU'RE", "YOURSELF"]


end

#ap Scrabble::DICTIONARY[55].class
