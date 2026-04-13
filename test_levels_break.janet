(defn test-err []
  (var sum 0)
  (while true
    (while true
      (break nil 2))
    (+= sum 10)
    (break))
  sum)
(print (test-err))
