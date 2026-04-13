#!/bin/bash
# Remove the stuff we appended at the end
head -n -26 test/suite-specials.janet > test/suite-specials.janet.tmp
# Append the tests right before `(end-suite)`
cat << 'INNEREOF' >> test/suite-specials.janet.tmp

# Break levels
(assert (= 0
  (do
    (var sum 0)
    (while true
      (while true
        (break nil 2))
      (+= sum 10)
      (break))
    sum)) "break levels 1")

(assert (= 42
  ((fn []
     (while true
       (break 42 0))))) "break levels 0 returns from function")

(assert (= 100
  ((fn []
     (while true
       (while true
         (break 100 -1)))))) "break levels -1 returns from function")

(end-suite)
INNEREOF

mv test/suite-specials.janet.tmp test/suite-specials.janet
