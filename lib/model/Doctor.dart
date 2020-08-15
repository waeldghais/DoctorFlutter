class Doctor {
  final String image, lastName,firstName, description, specaliter,timing,locale;
  final int  id;


  Doctor(
      {this.id,
        this.image,
        this.lastName,
        this.firstName,
        this.description,
        this.specaliter,
        this.timing,
        this.locale

        });
}

List<Doctor> doctors = [
  Doctor(
      id: 0,
    lastName: "BEN YAALA",
    firstName: "Aymen ",
    specaliter:"Cardiologue",
      description: dummyText,
      image: "img/doctorA.jpg",
    timing: "8:30-15:00",
    locale:"Centre Urbain"

      ),
  Doctor(
      id: 1,
    lastName: " AZZOUZ",
    firstName: "Abdelaziz",
    specaliter:"dentiste",
    description: dummyText,
    image: "img/doctor1.jpg",
    timing: "8:30-15:00",
      locale:"Bizerte Nord"),
  Doctor(
      id: 2,
    lastName: "MARHOUL",
    firstName: "Karim",
    specaliter:"Généraliste",
    description: dummyText,
    image: "img/DocotorK.jpg",
    timing: "8:30-15:00",
      locale:"Menzel Temime"),
  Doctor(
      id: 3,
    lastName: "SAIDI",
    firstName: "Hana ",
    specaliter:"Généraliste",
    description: dummyText,
    image: "img/doctorhana.jpg",
    timing: "8:30-15:00",
      locale:"Soliman"),
  Doctor(
      id: 4,
    lastName: "ALBOUCHI",
    firstName: "Manel",
    specaliter:"Psychothérapeute",
    description: dummyText,
    image: "img/doctormanel.jpg",
    timing: "8:30-15:00",
      locale:"La Marsa"),
  Doctor(
      id: 5,
    lastName: " MEZGHANI",
    firstName: "Mohamed nejib",
    specaliter:"Psychiatre",
    description: dummyText,
    image: "img/drmohamed.jpg",
    timing: "8:30-15:00",
      locale:"El Manar 2"),
  Doctor(
      id: 6,
    lastName: "LAOUINI",
    firstName: "Anas",
    specaliter:"Sexologue",
    description: dummyText,
    image: "img/mr-anas-laouini.jpg",
    timing: "8:30-15:00",
      locale:"Bab Bhar"),
  Doctor(
      id: 7,
    lastName: "HOUSSANI MAKNI",
    firstName: "Khouloud",
    specaliter:"Psychiatre",
    description: dummyText,
    image: "img/dr-khouloud.jpg",
    timing: "8:30-15:00",
      locale:"El Manar 1"),
  Doctor(
      id: 8,
    lastName: "Sydney (Australie)",
    firstName: "2800",
    specaliter:"Médecine d'urgence",
    description: dummyText,
    image: "img/doctor1.jpg",
    timing: "8:30-15:00",
      locale:"nabeul"),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
