Fabricator( :due_today, from: :release_date ) do 
  delivery_date { Date.today }
end

Fabricator( :due_tomorrow, from: :release_date ) do 
  delivery_date { Date.today + 1 }
end