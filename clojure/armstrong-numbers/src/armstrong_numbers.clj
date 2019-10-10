(ns armstrong-numbers)

(defn- split-digits [num]
  (->> num
       (str)
       (map #(Character/digit % 10))))

(defn- exp [base pow]
  (loop [acc 1
         base base
         pow pow]
    (if (= pow 1)
      (* base acc)
      (recur (* acc base) base (- pow 1)))))

(defn armstrong? [num]
  (let [digits (split-digits num)
        len (count digits)
        sum (apply + (map #(exp % len) digits))]
    (= sum num)))
