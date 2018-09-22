class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a = a.map! {|c| c.to_i + 2}.compact   # Convert array elem to int and add two
    a = a.map! {|i| i if i.even?}.compact # Keep even numberse only
    a = a.uniq.compact                   # Remove duplicates
    a = a.map {|i| i if i < 10}.compact  # Reject numbers >= 10
    a = a.inject(0){|sum,x| sum + x }           # Sum all values
  end
end
