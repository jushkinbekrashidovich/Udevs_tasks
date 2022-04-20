class TaxiDriver {
  final int id;
  final String driverName;
  final double driverRating;
  final String taxiDetails;

  TaxiDriver(this.id, this.driverName, this.driverRating,
      this.taxiDetails);

  TaxiDriver.named(
      this.id,
      this.driverName,
      this.driverRating,
      this.taxiDetails);

  @override
  List<Object> get props =>
      [id, driverName, driverRating, taxiDetails];
}


class TaxiBooking {
  final int id;
  final String location;
  final String destination;
  final int People;
  final double Price;

  TaxiBooking(
      this.id,
      this.destination,
      this.People,
      this.Price, 
      this.location,
      );

  TaxiBooking.named(
    
    this.location, 
    this.id,
    this.destination,
    this.People,
    this.Price,
  );

  
}
void main(){
  TaxiDriver taxiDriver = TaxiDriver(221, 'Jushkinbek', 5, 'hellollallalal');
  TaxiBooking taxiBooking = TaxiBooking(220, 'Yunusobod', 12, 12000, 'Chilonzor');

  print('User location: ${taxiBooking.location}');
  print('User destination: ${taxiBooking.destination}');

  print('User price: ${taxiBooking.Price}');

  print('Driver rating: ${taxiDriver.driverRating}');
  print('Driver details: ${taxiDriver.taxiDetails}');

}