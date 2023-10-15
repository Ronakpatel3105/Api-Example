import 'coordinates_model.dart';

class AddressModel {
  CoordinatesModel coordinate;
  String address;
  String city;
  String postalCode;
  String state;

  AddressModel(
      {required this.coordinate,
      required this.address,
      required this.city,
      required this.postalCode,
      required this.state});

  factory AddressModel.fromJson(Map<String,dynamic>json){

    List<CoordinatesModel>mCoordinates=[];
    for(Map<String,dynamic> eachCoordinates in json['coordinates']){

      mCoordinates.add(CoordinatesModel.fromJson(eachCoordinates));


    }

    return AddressModel(
        coordinate: CoordinatesModel.fromJson(json['coordinates']),
        address: json['address'],
        city: json['city'],
        postalCode: json['postalCode'],
        state: json['state']);
  }
}
