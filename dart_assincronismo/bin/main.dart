import 'package:http/http.dart';
import 'dart:convert';

void main() {
  //requestData();
  requestDataAsync();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/karlinhos987/3b2cb971f0bd6cbb37ad69bb03d935de/raw/461bc24ce58ec01522c7d3235934fd87a0d80a7e/json";

  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);

  futureResponse.then(
    (Response response) {
      print(response);
      print(response.body);
      List<dynamic> listAccounts = json.decode(response.body);
      Map<String, dynamic> mapCarla = listAccounts.firstWhere(
        (element) => element["name"] == "Carla",
      );
      print(mapCarla["balance"]);
    },
  );

  print("End of requestData");
}

requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/karlinhos987/3b2cb971f0bd6cbb37ad69bb03d935de/raw/461bc24ce58ec01522c7d3235934fd87a0d80a7e/json";
  Response response = await get(Uri.parse(url));

  print(json.decode(response.body)[0]);

  print("End of requestDataAsync");
}
