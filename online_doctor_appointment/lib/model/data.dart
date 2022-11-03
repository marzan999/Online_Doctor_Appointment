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
      Doctor("all", "Dr Perrin", "Neurology", "fees star\n from", "1200 tk",
          "5 star", "images/d1.jpg"),
      Doctor("Neurology", "Dr Lorry A", "Cardiology", "fees star\n from",
          "1000 tk", "5 star", "images/d2.jpg"),
      Doctor("Heart spacalist", "Dr Maris", "Heart", "fees star\n from",
          "100 tk", "5 star", "images/d4.jpg"),
      Doctor("Liver spacalist", "Dr Karlel", "Liver", "fees star\n from",
          "100 tk", "5 star", "image/d5.jpg"),
    ];
  }
}
