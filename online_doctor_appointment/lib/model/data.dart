class Doctor {
  String title;
  String name;
  String occa;
  String star;
  String img;
  String price;
  String feetile;

  Doctor(this.title, this.name, this.occa, this.price, this.star, this.feetile,
      this.img);

  static List<Doctor> generatedList() {
    return [
      Doctor("all", "Dr. Perrin", "Neurology", "fee starts\nfrom", "\$50",
          "5 star", "images/d1.jpg"),
      Doctor("Neurology", "Dr. Lorry A", "Cardiology", "fee starts\nfrom",
          "\$55", "5 star", "images/d2.jpg"),
      Doctor("Heart spacalist", "Dr. Maris", "Heart", "fee starts\nfrom",
          "\$48", "5 star", "images/d4.jpg"),
      Doctor("all", "Dr. Perrin", "Neurology", "fee starts\nfrom", "\$50",
          "5 star", "images/d1.jpg"),
      Doctor("Neurology", "Dr. Lorry A", "Cardiology", "fee starts\nfrom",
          "\$55", "5 star", "images/d2.jpg"),
      Doctor("Heart spacalist", "Dr. Maris", "Heart", "fee starts\nfrom",
          "\$48", "5 star", "images/d4.jpg"),
    ];
  }
}
