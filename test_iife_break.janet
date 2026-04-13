(defn test-iife []
  (while true
    (let [f (fn [] (break))]
       (f))
    (print "loop")
    (break)))
(test-iife)
