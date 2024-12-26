import 'package:http/http.dart';

void main() {
  fetchRecipes();
}

void fetchRecipes() {
  String url =
      'https://gist.githubusercontent.com/karlinhos987/ea8aa9adb941cc9ff7f0e12214411528/raw/9c2ed3da69cbd9c15df84bddf6218b11a73adc0a/json';
  Uri uri = Uri.parse(url);

  get(uri).then((Response response) {
    print(response.body);
  });
}
