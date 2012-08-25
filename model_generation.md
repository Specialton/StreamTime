rails g scaffold Event name:string location:references start_datetime:datetime end_datetime:datetime <!-- shifts:has_many -->
rails g scaffold Location name:string contact_info:references
rails g scaffold ContactInfo street_address_1:string street_address_2:string city:string state:string zip:integer phone:string email:string
rails g scaffold Shift job:references start_datetime:datetime end_datetime:datetime location:references
rails g scaffold Job job_type:references <!-- duties:has_many -->
rails g scaffold JobType name:string
rails g scaffold Duty description:string
rails g scaffold ShiftAssignment shift:references staffer:references assignment_status:references
rails g scaffold AssignmentStatus name:string
rails g scaffold Availablity start_datetime:datetime end_datetime:datetime
rails g scaffold ShirtSize size:string
rails g devise Staffer anonymous_id:string fname:string mi:string lname:string suffix:string shirt_size:references <!-- availabilities:has_many preferred_shifts:has_many -->

### Event ###
* name
* location
* location(venues)
* start_datetime
* end_datetime
* shifts

### Location ###
* name
* contact_info

### ContactInfo ###
* street_address_1
* street_address_2
* city
* state
* zip
* phone
* email

### Shift ###
* job
* start_datetime
* end_datetime
* location

### Job ###
* job_type
* duties

### JobType ###
* name

### Duty ###
* description

### ShiftAssignment ###
* shift
* staffer
* assignment_status

### AssignmentStatus ###
* name  <!-- Pending confirmed etc... -->

### Staffer ### 
* anonymous_id  <!-- MMDDL4SS -->
* fname
* mi
* lname
* suffix
* contact_info
* availabilities
* preferred_shifts
* shirt_size

### Availablity ###
* start_datetime
* end_datetime

### ShirtSize ###
* size
* gender