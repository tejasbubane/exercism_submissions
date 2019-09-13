(ns armstrong-numbers)

(defn- split-digits [num]
  (->> num
       (str)
       (seq)
       (map #(Character/digit % 10))))

(defn- exp [base pow]
  (if (= pow 1)
    base
    (* base (exp base (- pow 1)))))

(defn armstrong? [num]
  (let [digits (split-digits num)
        len (count digits)
        sum (apply + (map #(exp % len) digits))]
    (= sum num)))
