(ns hello-world)

(defn hello
  ([name] (format "Hello, %s!" name))
  ([] (hello "World")))
