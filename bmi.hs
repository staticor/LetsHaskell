bmiTell :: Double -> Double -> String
bmiTell weight height
   | bmi <= 18.5 = "look underweight"
   | bmi <= 25  = " supposedly normal."
   | bmi <= 30 = "fat"
   | otherwise = " a whale , congratulations. !"
   where bmi  = weight / height ^ 2 
