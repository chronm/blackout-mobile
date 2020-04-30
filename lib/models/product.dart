import 'package:Blackout/data/database/database.dart';
import 'package:Blackout/models/category.dart';
import 'package:Blackout/models/displayable.dart';
import 'package:Blackout/models/home.dart';
import 'package:Blackout/models/item.dart';
import 'package:Blackout/models/modification.dart';
import 'package:Blackout/models/unit/unit.dart';
import 'package:Blackout/util/double_extension.dart';
import 'package:moor/moor.dart';
import 'package:time_machine/time_machine.dart';

class Product extends Displayable {
  String id;
  String ean;
  Category category;
  String description;
  List<Item> items = [];
  Home home;
  double refillLimit;

  Product clone() {
    return Product(id: id, ean: ean, category: category, description: description, items: items, home: home, refillLimit: refillLimit);
  }

  double get amount => items.map((i) => i.amount).reduce((a, b) => a + b);

  String get scientificAmount {
    if (category != null) {
      return UnitConverter.toScientific(Amount(amount, Unit.fromSi(category.unit))).toString().trim();
    }

    return super.scientificAmount;
  }

  @override
  String get title => description;

  @override
  bool get expiredOrNotification {
    bool isExpired = false;
    if (category?.warnInterval != null) {
      isExpired = items.where((item) => item.expirationDate != null).any((item) => item.expirationDate.subtract(category.warnInterval) < LocalDateTime.now());
    }

    return isExpired || items.where((item) => item.notificationDate != null).any((item) => item.notificationDate <= LocalDateTime.now());
  }

  @override
  bool get tooFewAvailable {
    if (refillLimit != null) {
      return amount <= refillLimit;
    }

    return false;
  }

  Product({this.id, this.ean, @required this.description, this.category, this.items, this.refillLimit, UnitEnum unit, @required this.home}) : super(unit);

  factory Product.fromEntry(ProductEntry entry, Home home, {Category category, List<Item> items}) {
    return Product(
      id: entry.id,
      ean: entry.ean,
      description: entry.description,
      refillLimit: entry.refillLimit,
      unit: entry.unit == null ? null : UnitEnum.values[entry.unit],
      category: category,
      items: items,
      home: home,
    );
  }

  ProductTableCompanion toCompanion() {
    return ProductTableCompanion(
      id: Value(id),
      ean: Value(ean),
      description: Value(description),
      refillLimit: Value(refillLimit),
      unit: unit != null ? Value(UnitEnum.values.indexOf(unit)) : Value.absent(),
      categoryId: category != null ? Value(category.id) : Value(null),
      homeId: Value(home.id),
    );
  }

  @override
  bool isValid() {
    return description != null && description != "";
  }

  List<Modification> getModifications(Product product) {
    List<Modification> modifications = [];
    if (ean != product.ean) {
      modifications.add(Modification(fieldName: "ean", from: ean, to: product.ean));
    }
    if (description != product.description) {
      modifications.add(Modification(fieldName: "description", from: description, to: product.description));
    }
    if (refillLimit != product.refillLimit) {
      modifications.add(Modification(fieldName: "refillLimit", from: refillLimit.format(), to: product.refillLimit.format()));
    }

    return modifications;
  }

  @override
  bool operator ==(other) {
    return ean == other.ean && description == other.description && refillLimit == other.refillLimit;
  }
}
