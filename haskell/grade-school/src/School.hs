module School (School, add, empty, grade, sorted) where

import Data.List
import Data.Maybe

type SchoolGrade = (Int, [String])
type School = [SchoolGrade]

add :: Int -> String -> School -> School
add gradeNum name [] = [(gradeNum, [name])]
add gradeNum name ((grade', students):grades) =
  if gradeNum == grade'
  then (gradeNum, sort (name:students)):grades
  else (grade', students) : add gradeNum name grades

empty :: School
empty = []

grade :: Int -> School -> [String]
grade gradeNum school = fromMaybe [] $ lookup gradeNum school

sorted :: School -> School
sorted = sortBy (\(a, _) (b, _) -> compare a b)
