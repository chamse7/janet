(defn test-err []
  (var sum 0)
  (while true
    (while true
      (while true
         (break nil 3))
      (+= sum 10)
      (break))
    (+= sum 100)
    (break))
  sum)
(print (test-err))
