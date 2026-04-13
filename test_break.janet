(defn test-break-levels []
  (var sum 0)
  (while true
    (while true
      (while true
        (break)
        (+= sum 1))
      (+= sum 10)
      (break))
    (+= sum 100)
    (break))
  sum)

(print (test-break-levels))
