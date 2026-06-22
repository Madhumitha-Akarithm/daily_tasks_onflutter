class Symptoms {
  final String image;
  final String label;

  Symptoms({
    required this.image,
    required this.label,
  });
}

List<Symptoms> symptoms = [
  Symptoms(
    image: 'assets/doctor/temperature.png',
    label: 'Temperature',
  ),
  Symptoms(
    image: 'assets/doctor/snuffle.png',
    label: 'Snuffle',
  ),
  Symptoms(
    image: 'assets/doctor/headache.png',
    label: 'Headache',
  ),
  Symptoms(
    image: 'assets/doctor/dizzy.png',
    label: 'Dizzy',
  ),
];