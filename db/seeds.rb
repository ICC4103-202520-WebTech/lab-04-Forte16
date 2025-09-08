Room.create(number: "101", room_type: 1, price: 100, status: 0)
Room.create(number: "102", room_type: 1, price: 120, status: 0)

# Guests
Guest.create(first_name: "Cristiano", last_name: "Ronaldo", email: "cristiano.ronaldo@example.com", phone: "123-456-7890", document_id: "123456789")
Guest.create(first_name: "Paolo", last_name: "Maldini", email: "paolo.maldini@example.com", phone: "987-654-3210", document_id: "987654321")
Guest.create(first_name: "Zinedine", last_name: "Zidane", email: "zindeine.zidane@example.com", phone: "555-555-5555", document_id: "555555555")

# Reservations
Reservation.create(code: "RES001", guest_id: 1, room_id: 1, check_in: Date.today, check_out: Date.tomorrow, status: 0, adults: 2, children: 0)

# Services
Service.create(name: "Minibar", price: 20, is_active: true)
Service.create(name: "Laundry", price: 15, is_active: true)

# Service Usages
ServiceUsage.create(reservation_id: 1, service_id: 1, quantity: 1, used_at: DateTime.now, note: "Coca-Cola")

# Invoices
Invoice.create(reservation_id: 1, nights_subtotal: 100, services_subtotal: 20, tax: 19, total: 139, issued_at: DateTime.now, status: "pending")

puts "DONE!"
