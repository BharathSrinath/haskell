doubleMe x = x + x
doubleUs x y = x*2 + y*2
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2 
doubleSmallNumber2 x = if x > 100 then x else x * 2
doubleSmallNumber3 x = (if x > 100 then x else x * 2) + 1
myName = "Bharath Srinath"
naturalNumbers :: [Integer]
naturalNumbers = [1,2,3,4,5,6,7,8,9]
wholeNumbers = [0,1,2,3,4,5,6,7,8,9]
emptyOrNotEmpty1 a b = if not (null [a, b])
                        then head [a, b] else "empty"
emptyOrNotEmpty2 :: Integer
emptyOrNotEmpty2 = if not (null [1,2]) then head [1,2] else 0
isFirstEmpty x = null (head x) 
-- Write an expression that checks whether a list is empty, []
listLength x = length x == 1
-- Write an expression that checks whether a list has only one element and it should return True else False
concatListsWithinList x = head x ++ last x
-- Write an expression that concatenates two lists given inside another list.
boomBang x = [if y > 10 then "BANG" else "BOOM" | y <- x, y `mod` 2 == 1, x /= 13, x /= 15, x /= 17, x /= 19]
-- Let's say we want a comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!". If a number isn't odd, we throw it out of our list. Also exclude numbers 13, 15 or 19.
removeUppercase ucl = [uc | uc <- ucl, uc `elem` ['A'..'Z']]
-- remove everything from the list except uppercase letters from it.
-- 'elem' is similar to 'includes' in JS
tupleTest = (("bharath",2), (3,4))

-- Here's a problem that combines tuples and list comprehensions: which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24? First, let's try generating all triangles with sides equal to or smaller than 10:
triangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
-- Now lets add the condition for right-angled triangle and perimiter to be 24
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], a^2 + b^2 == c^2, a+b+c == 24] 
