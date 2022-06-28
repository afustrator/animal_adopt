class CardPet {
  String imageAsset;
  String name;
  String location;
  String gender;
  int age;
  String race;
  bool isFavorite;
  String nameOwner;
  String imageOwner;
  String description;

  CardPet({
    required this.imageAsset,
    required this.name,
    required this.location,
    required this.gender,
    required this.age,
    required this.race,
    required this.isFavorite,
    required this.nameOwner,
    required this.imageOwner,
    required this.description,
  });
}

var cardPetList = [
  CardPet(
    imageAsset: 'assets/images/beautiful-cat.png',
    name: 'Beautiful Cat',
    location: 'Sawangan, Depok',
    gender: 'Male',
    age: 25,
    race: 'Local',
    isFavorite: true,
    nameOwner: 'Jack Lobanov',
    imageOwner: 'assets/images/avatar2.png',
    description:
        'The cat (Felis catus) is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family. A cat can either be a house cat, a farm cat or a feral cat; the latter ranges freely and avoids human contact. Domestic cats are valued by humans for companionship and their ability to kill rodents. About 60 cat breeds are recognized by various cat registries. The cat is similar in anatomy to the other felid species: it has a strong flexible body, quick reflexes, sharp teeth and retractable claws adapted to killing small prey. Its night vision and sense of smell are well developed. Cat communication includes vocalizations like meowing, purring, trilling, hissing, growling and grunting as well as cat-specific body language. A predator that is most active at dawn and dusk (crepuscular), the cat is a solitary hunter but a social species. It can hear sounds too faint or too high in frequency for human ears, such as those made by mice and other small mammals. Cats also secrete and perceive pheromones.',
  ),
  CardPet(
    imageAsset: 'assets/images/kucing-imoet.png',
    name: 'Kucing Imoet',
    location: 'Jagakarsa, Jakarta Selatan',
    gender: 'Male',
    age: 19,
    race: 'American Short Hair',
    isFavorite: false,
    nameOwner: 'Arianne Madilva',
    imageOwner: 'assets/images/avatar3.png',
    description:
        'Although it is not an extremely athletic cat, the American Shorthair has a large, powerfully-built body. According to the breed standard of the Cat Fanciers\' Association, the American Shorthair is a true breed of working cat. They have round faces and short ears. According to the CFA, American Shorthairs are low-maintenance cats that are generally healthy, easy-going, affectionate with owners and social with strangers. Males are significantly larger than females, weighing eleven to fifteen pounds when fully grown. Mature females weigh six to twelve pounds when they achieve full growth at three to four years of age. With a quality diet and plenty of attention, love, and care, they can live 15 years or longer, requiring annual vaccinations and veterinary checkups. These cats have solidly built, powerful, and muscular bodies with well-developed shoulders, chests, and hindquarters.',
  ),
  CardPet(
    imageAsset: 'assets/images/persian-cat.png',
    name: 'Persian Cat',
    location: 'Cipulir, Jakarta Selatan',
    gender: 'Female',
    age: 18,
    race: 'Persian',
    isFavorite: true,
    nameOwner: 'Yarui Mikasa',
    imageOwner: 'assets/images/avatar4.png',
    description:
        'The Persian cat (Persian: گربه پارسی, romanized: Gorbe\'-ye Pârsi) is a long-haired breed of cat characterized by its round face and short muzzle. It is also known as the "Persian Longhair" in English-speaking countries. The first documented ancestors of Persian cats were imported into Italy from Persia around 1620. Widely recognized by cat fancy since the late 19th century, Persian cats were first adopted by the English, and then mainly by American breeders after World War II. Some cat fancier organizations\' breed standards subsume the Himalayan and Exotic Shorthair as variants of this breed, while others treat them as separate breeds.',
  ),
];
