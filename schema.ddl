DROP SCHEMA IF EXISTS schema cascade;
CREATE SCHEMA schema;
SET search_path TO schema, public;

CREATE TABLE Guests (
  guest_id integer PRIMARY KEY,
  name varchar(25) NOT NULL,
  dob date NOT NULL,
  address varchar(50) NOT NULL
);

CREATE TABLE Hosts (
  email varchar(30) PRIMARY KEY
);

CREATE TABLE Property (
  property_id integer PRIMARY KEY,
  host varchar(30) NOT NULL REFERENCES Hosts(email),
  bedrooms integer NOT NULL,
  bathrooms integer NOT NULL,
  capacity integer NOT NULL,
  address varchar(50) NOT NULL,
  CONSTRAINT min_capacity CHECK(capacity >= bedrooms)
);

CREATE DOMAIN score AS smallint 
   DEFAULT NULL
   CHECK (VALUE >= 0 AND VALUE <= 100);

CREATE TABLE PropertyType (
  property_id integer PRIMARY KEY REFERENCES Property,
  property_type varchar(10) NOT NULL,
  walkability score NOT NULL,
  closest_transit varchar(10) NOT NULL,
  water_type varchar(10),
  lifegaurd_offered boolean NOT NULL DEFAULT false,
  CONSTRAINT property_type CHECK(property_type = 'city' OR property_type = 'water' OR property_type = 'city-water' OR property_type = 'other'),
  CONSTRAINT transit_type CHECK(closest_transit = 'bus' OR closest_transit = 'LRT' OR closest_transit = 'subway' OR closest_transit = 'none'),
  CONSTRAINT water_type CHECK(water_type = 'beach' OR water_type = 'lake' OR water_type = 'pool')
);

CREATE TABLE Luxuries (
  property_id integer NOT NULL REFERENCES Property,
  luxury varchar(25) NOT NULL,
  PRIMARY KEY (property_id, luxury),
  CONSTRAINT luxuries CHECK (luxury = 'hot tub' OR luxury = 'sauna' OR luxury = 'laundry service' OR luxury = 'daily cleaning' OR 
                             luxury = 'daily breakfast delivery' OR luxury = 'concierge service')
);

CREATE TABLE Rental (
  rental_id integer PRIMARY KEY,
  renter integer NOT NULL REFERENCES Guests(guest_id),
  property_id integer NOT NULL REFERENCES Property,
  num_of_people integer NOT NULL,
  check_in_date date NOT NULL,
  check_out_date date NOT NULL,
  renter_credit_card bigint NOT NULL,
  -- CONSTRAINT within_capacity CHECK(num_of_people <= property_id(capacity)),
  CONSTRAINT dates_order CHECK(check_in_date <= check_out_date)
);

CREATE TABLE RentalGuestsInfo (
  rental_id integer NOT NULL REFERENCES Rental,
  guest_id integer NOT NULL REFERENCES Guests,
  PRIMARY KEY (rental_id, guest_id)
);

CREATE TABLE Prices (
  rental_id integer NOT NULL REFERENCES Rental,
  week integer NOT NULL,
  price float NOT NULL,
  PRIMARY KEY (rental_id, week)
);

CREATE DOMAIN rating AS smallint 
   DEFAULT NULL
   CHECK (VALUE >= 0 AND VALUE <= 5);

CREATE TABLE PropertyRating (
  guest_id integer NOT NULL REFERENCES Guests,
  rental_id integer NOT NULL REFERENCES Rental,
  stars rating NOT NULL,
  PRIMARY KEY (guest_id, rental_id)
);

CREATE TABLE HostRating (
  renter integer NOT NULL,
  rental_id integer PRIMARY KEY REFERENCES Rental,
  stars rating NOT NULL
);

CREATE TABLE Comments (
  guest_id integer NOT NULL REFERENCES Guests,
  rental_id integer NOT NULL REFERENCES Rental,
  comment varchar(100) NOT NULL
);