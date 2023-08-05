class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_id" 
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departing_id"
end
