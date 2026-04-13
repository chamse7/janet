(defn foo []
  (let [x (while true (break 9))] x))
(print (foo))
