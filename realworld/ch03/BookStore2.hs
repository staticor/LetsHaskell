data BookInfo = Book Int String [String] deriving (Show)

data MagazineInfo = Magaze Int String [String] deriving (Show)

abook = Book 1 "One" ["a press, author AAA"]

amagazine = Magaze 1 "Two" ["a press, author AAA"]

-- bookReview

data BookReview = BookReview BookInfo CustomerId String
type CustomerId = Int
type ReviewBody = String 
data BetterReview = BetterReview BookInfo CustomerId ReviewBody


type BookRecord = (BookInfo, BookReview)


type StudentId = Int
type StudentName = String
type StudentAddress = [String]
type People = String 


data StudentInfo = StudentCard StudentId StudentName StudentAddress
                 | JustName People
                 deriving (Show)



nicerId      (Book id    _    _) = id
nicerTitle   (Book _ title  _  ) = title
nicerAuthors (Book _ _ authors ) = authors





