
class PopularModel {
  String name;
  String iconPath;
  String price;
  String percent;
  bool viewIsSelected;

  PopularModel(
      {required this.name,
      required this.iconPath,
      required this.price,
      required this.percent,
      required this.viewIsSelected});
  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];

    popular.add(PopularModel(
        name: 'Users Choice',
        iconPath: 'assets/icons/food.svg',
        price: '894.28',
        percent: '4.25%',
        viewIsSelected: true));
    popular.add(PopularModel(
        name: 'Add Collection',
        iconPath: 'assets/icons/food.svg',
        price: '',
        percent: '',
        viewIsSelected: false));
    popular.add(PopularModel(
        name: 'Later',
        iconPath: 'assets/icons/food.svg',
        price: '',
        percent: '',
        viewIsSelected: false));
    return popular;
  }
}
