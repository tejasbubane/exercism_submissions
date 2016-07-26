(ns rna-transcription)

(defn n-complement [nucleotide]
  (let [mapping {\G \C \C \G \T \A \A \U}]
    (if (contains? mapping nucleotide)
      (mapping nucleotide)
      (throw (AssertionError. "")))))

(defn to-rna [strand]
  (clojure.string/join
   "" (map n-complement strand)))
