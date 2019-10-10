(ns armstrong-numbers)

(defn- split-digits [num]
  (->> num
       (str)
       (map #(Character/digit % 10))))

(defn- exp [base pow]
  (reduce
   (fn [acc i] (* acc base))
   1
   (take pow (range))))

(defn armstrong? [num]
  (let [digits (split-digits num)
        len (count digits)
        sum (apply + (map #(exp % len) digits))]
    (= sum num)))
