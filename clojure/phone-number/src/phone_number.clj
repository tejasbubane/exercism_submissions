(ns phone-number)

(defn- validate
  [phone-number]
  (let [number (re-seq #"\d" phone-number)
        size (count number)]
    (if (or (= size 10)
            (and (= size 11) (= (first number) "1")))
      (->> number
           (take-last 10))
      (seq "0000000000"))))

(defn number
  [phone-number]
  (->> phone-number
       (validate)
       (clojure.string/join "")))

(defn- parts [num-string]
  (let [cleaned-number (number num-string)]
    {:pan-area-code (subs cleaned-number 0 3)
     :exchange-code (subs cleaned-number 3 6)
     :subscriber-number (subs cleaned-number 6)}))

(defn area-code [num-string]
  (:pan-area-code (parts num-string)))

(defn pretty-print [num-string]
  (let [{:keys [pan-area-code exchange-code subscriber-number]}
        (parts num-string)]
    (str "(" pan-area-code ") " exchange-code "-" subscriber-number)))
