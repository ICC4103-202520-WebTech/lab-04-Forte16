# User Stories – Hotel Management System

##  Room Management
- As a hotel staff member, I want to **add new rooms with type, rate, and status** so that I can manage the hotel’s room inventory 
- As a hotel staff member, I want to **update a room’s status (available, occupied, out-of-service)** so that I can reflect real-time room availability  
- As a hotel staff member, I want to **view a list of all rooms with their details** so that I can quickly check availability  

##  Guest Registration
- As a hotel staff member, I want to **register a new guest with personal and contact details** so that I can keep records of guests 
- As a hotel staff member, I want to **view and search guest information** so that I can find reservations or histories easily  
- As a hotel staff member, I want to **see a guest’s reservation history** so that I can provide better service and keep track of frequent guests  

##  Reservation and Room Assignment
- As a hotel staff member, I want to **create a reservation for a guest including check-in and check-out dates** so that I can schedule their stay  
- As a hotel staff member, I want to **assign a room to a reservation** so that I can ensure the guest has a place to stay 
- As a hotel staff member, I want to **prevent overlapping bookings for the same room** so that reservations don’t conflict
- As a hotel staff member, I want to **set the number of adults and children for each reservation** so that I can manage capacity 

##  Service Consumption Tracking
- As a hotel staff member, I want to **record additional services consumed by a guest (minibar, laundry, massages, etc.)** so that I can charge them at check-out  
- As a hotel staff member, I want to **view all services consumed by a reservation** so that I can prepare the final bill  

##  Check-In and Check-Out
- As a hotel staff member, I want to **mark a reservation as checked-in** so that I can confirm the guest has arrived  
- As a hotel staff member, I want to **mark a reservation as checked-out** so that I can release the room and finalize billing  
- As a hotel staff member, I want to **cancel reservations** so that I can manage no-shows or changes in plans  

##  Invoice Generation
- As a hotel staff member, I want to **generate an invoice at check-out** so that the guest can see their total charges 
- As a hotel staff member, I want the **invoice to include room charges and additional services** so that billing is accurate  
- As a hotel staff member, I want to **see subtotals and totals automatically calculated** so that I don’t have to do manual math  



##  Database Schema -------------------------------------------------------------------------------------
- rooms(**number**, room_type, price, status)
- guests(first_name, last_name, email, phone, **document_id**)
- reservations(**code**, guest_document_id, room_number, check_in, check_out, status, adults, children)
- services(**name**, price, is_active)
- service_usages(**reservation_code, service_name**, quantity, **used_at**, note)
- invoices(**reservation_code**, nights_subtotal, services_subtotal, tax, total, **issued_at**, status)
