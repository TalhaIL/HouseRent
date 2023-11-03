class Service {
  final String image;
  final String name;
  // final List<Individual> individuals;

  Service({
    required this.image,
    // required this.individuals,
    required this.name,
  });
}

class Individual {
  final String profile;
  final String name;
  final String gender;
  final String email;
  final List<IndividualDetail> details;

  Individual(
      {required this.profile,
      required this.name,
      required this.gender,
      required this.email,
      required this.details});
}

class IndividualDetail {
  final String age;

  IndividualDetail({required this.age});
}
