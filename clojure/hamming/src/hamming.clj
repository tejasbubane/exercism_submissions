(ns hamming)

(defn distance [strand1 strand2]
  (let [dna1 (seq strand1)
        dna2 (seq strand2)]
    (if (not= (count dna1) (count dna2))
      nil
      (count
       (filter identity
               (map (fn [s1 s2] (not= s1 s2))
                    (seq strand1)
                    (seq strand2)))))))
