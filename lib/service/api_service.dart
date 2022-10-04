import 'package:alobhatestapp/constants.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect {
  Future<Response> getResponse() async {
    Response response = await get(
      apiURL,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyIiwibmJmIjoxNjY0MTkyMTI4LCJleHAiOjE2NjQyNzg1MjgsImlhdCI6MTY2NDE5MjEyOH0.yqEwZar7Eyd9hQt2PKgPVFPspQXxalNSD47yYTgmK40',
      },
    );
    return response;
  }
}
