(ns bob
  (:require [clojure.string :as s]))

(defn question? [input]
  (s/ends-with? input "?"))

(defn shouting? [input]
  (= (s/upper-case input) input))

(defn only-numbers? [input]
  (not (re-find #"^[0-9\?\s,]+$" input)))

(defn response-for [input]
  (cond
    (s/blank? input)             "Fine. Be that way!"
    (and (shouting? input)
         (only-numbers? input))  "Whoa, chill out!"
    (question? input)            "Sure."
    :else                        "Whatever."))
