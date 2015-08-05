module ETL
  def self.transform(input)
    input.each_with_object({}) do |(point, letters), output|
      letters.each do |letter|
        output[letter.downcase] = point
      end
    end
  end
end
