(ns nucleotide-count)

(def init-strand {\G 0 \A 0 \C 0 \T 0})

(defn nucleotide-counts [strand]
  (reduce (fn [acc s] (update-in acc [s] inc))
          init-strand
          (seq strand)))

(defn count [nucleotide strand]
  (if (contains? init-strand nucleotide)
    (get (nucleotide-counts strand) nucleotide)
    (throw (Exception. "Invalid nucleotide"))))
