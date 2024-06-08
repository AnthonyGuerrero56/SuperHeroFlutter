class SuperHero {

  final String id;
  final String name;
  final String fullName;
  final String path;
  final PowerStats stats;

  const SuperHero({required this.id, required this.name, required this.fullName, required this.path, required this.stats});

  factory SuperHero.fromJson(Map<String, dynamic> json) {
    return SuperHero(
      id: json['id'],
      name: json['name'],
      fullName: json['biography']['full-name'],
      path: json['image']['url'],
      stats: PowerStats.fromJson(json['powerstats']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "full_name": fullName,
    };
  }
}

class FavoriteHero {
  final String id;
  final String name;
  final String fullName;

  FavoriteHero.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        fullName = map['full_name'];
}

class PowerStats {

  final double intelligence;
  final double strength;
  final double speed;
  final double durability;
  final double power;
  final double combat;

  const PowerStats({required this.intelligence, required this.strength, required this.speed, required this.durability, required this.power, required this.combat});

  factory PowerStats.fromJson(Map<String, dynamic> json) {
    return PowerStats(
      intelligence: double.parse(json['intelligence']!="null" ? json['intelligence'] : "0"),
      strength: double.parse(json['strength']!="null" ? json['strength'] : "0"),
      speed: double.parse(json['speed']!="null" ? json['speed'] : "0"),
      durability: double.parse(json['durability']!="null" ? json['durability'] : "0"),
      power: double.parse(json['power']!="null" ? json['power'] : "0"),
      combat: double.parse(json['combat']!="null" ? json['combat'] : "0"),
    );
  }

}