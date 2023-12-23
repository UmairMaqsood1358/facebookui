class MarketPlaceModel {
  final String title;
  final String photo;
  final double price;

  MarketPlaceModel(
      {required this.title, required this.photo, required this.price});
}

List<MarketPlaceModel> marketPlaceData = [
  MarketPlaceModel(
      title: "Bike 2 Months Old",
      photo: 'images/product/bike1.jpg',
      price: 1880.99),
  MarketPlaceModel(
      title: "Bike 1 Year Old",
      photo: 'images/product/car1.jpg',
      price: 100000.99),
  MarketPlaceModel(
      title: "Lates Bike", photo: 'images/product/bike1.jpg', price: 500000.99),
  MarketPlaceModel(
      title: "New Laptop", photo: 'images/product/laptop1.jpg', price: 1880.99),
  MarketPlaceModel(
      title: "Phone 2 months old",
      photo: 'images/product/phone1.jpg',
      price: 1880.99),
];
