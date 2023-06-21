void main() {
  Country myCountry = Country(
      countryName: 'Kyrgyzstan', countryClimate: 25, countryDescription: '');
  dynamic countryInfo = myCountry.getCountryInfo();
  print(countryInfo);

  print('-' * 100);

  CountryReturn myCountry2 =
      CountryReturn(countryName2: 'Kyrgyzstan', countryClimate2: 25);
  dynamic countryInfo2 = myCountry2.getCountryInfo2();
  print(countryInfo2);

  print('-' * 100);

  Car myCar = Car(
      name: 'Subaru', model: 'Legacy', power: 2.5, color: 'Grey', price: 9000);
  String carInfo = myCar.getInfo();
  print(carInfo);

  print('-' * 100);
  var phone1 = Phone(0555555555, 'iPhone', 0.4);
  var phone2 = Phone(0777777777, 'Samsung', 0.3);
  var phone3 = Phone(0500000000, 'Xiaomi', 0.2);

  print('Phone 1:');
  print('Number: ${phone1.number}');
  print('Model: ${phone1.model}');
  print('Weight: ${phone1.weight}');

  print('Phone 2:');
  print('Number: ${phone2.number}');
  print('Model: ${phone2.model}');
  print('Weight: ${phone2.weight}');

  print('Phone 3:');
  print('Number: ${phone3.number}');
  print('Model: ${phone3.model}');
  print('Weight: ${phone3.weight}');
}

class Country {
  String countryName;
  int countryClimate;
  String countryDescription;

  Country({
    required this.countryName,
    required this.countryClimate,
    required this.countryDescription,
  });

  getCountryInfo() {
    print(
      'countryName: $countryName,  countryClimate: $countryClimate, countryDescription: $countryDescription',
    );
  }
}

class CountryReturn {
  String countryName2;
  int countryClimate2;
  String? countryDescription2;

  CountryReturn({
    required this.countryName2,
    required this.countryClimate2,
    this.countryDescription2,
  });

  getCountryInfo2() {
    return 'countryName: $countryName2, countryClimate: $countryClimate2';
  }
}

class Car {
  String name;
  String model;
  double power;
  String color;
  int price;

  Car({
    required this.name,
    required this.model,
    required this.power,
    required this.color,
    required this.price,
  });

  getInfo() {
    return 'name: $name, model: $model, power: $power, color: $color, price: $price';
  }
}

class Phone {
  int number;
  String model;
  double weight;

  Phone(this.number, this.model, this.weight);
}
