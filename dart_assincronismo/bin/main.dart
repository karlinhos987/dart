import 'package:http/http.dart';
import 'dart:convert';

import 'package:main/api_key.dart';

void main() {
  //requestData();
  //requestDataAsync();
  sendDataAsync({
    "id": "NEW001",
    "name": "Futter",
    "lastname": "Dart",
    "balance": 10000,
  });
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

Future<List<dynamic>> requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/karlinhos987/3b2cb971f0bd6cbb37ad69bb03d935de/raw/461bc24ce58ec01522c7d3235934fd87a0d80a7e/json";
  Response response = await get(Uri.parse(url));

  //print(json.decode(response.body)[0]);
  //print("End of requestDataAsync");
  return json.decode(response.body);
}

sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataAsync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);
  //print(content);

  String url = "https://api.github.com/gists/3b2cb971f0bd6cbb37ad69bb03d935de";

  Response response = await post(
    Uri.parse(url),
    headers: {"Authorization": "Bearer $gitHubApiKey"},
    body: json.encode({
      "description": "json",
      "public": true,
      "files": {
        "json": {
          "content": content,
        },
      },
    }),
  );

  print(response.statusCode);
}
