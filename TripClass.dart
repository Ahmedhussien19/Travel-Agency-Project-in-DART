class Trip {
  int id;
  String location;
  int day;
  int month;
  int year;
  int passengerLimit;
  int price;


  Trip(
      [int id,
        String location,
        int day,
        int month,
        int year,
        int passengerLimit,
        int price]) {
    this.id = id;
    this.location = location;
    this.day = day;
    this.month = month;
    this.year = year;
    this.passengerLimit = passengerLimit;
    this.price = price;
  }



  getTrip() {
    return 'Id: $id | Location: $location | Date: $day/$month/$year | Passenger Limit: $passengerLimit | Price: $price\n';
  }
}