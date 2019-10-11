(ns clock)

(defn clock [hr min]
  (let [time (mod (+ (* hr 60) min) 1440)
        hours (mod (quot time 60) 24)
        minutes (mod time 60)]
    (list hours minutes)))

(defn- padzero [num]
  (if (< num 10) (str 0 num) num))

(defn clock->string [[hours minutes]]
  (str (padzero hours) ":" (padzero minutes)))

(defn add-time [[hour minutes] time]
  (clock hour (+ minutes time)))
