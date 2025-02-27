// import 'dart:async';
// import 'package:dio/dio.dart';
// import 'package:dart_assincronismo/api_key.dart';
// import 'package:dart_assincronismo/models/account.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

// class AccountService {
//   final StreamController<String> _streamController = StreamController<String>();
//   Stream<String> get streamInfos => _streamController.stream;

//   final Dio _dio = Dio();
//   final String url =
//       "https://api.github.com/gists/413c0aefe6c6abc464581c29029c8ace";

//   Future<List<Account>> getAll() async {
//     try {
//       Response response = await _dio.get(url);

//       Map<String, dynamic> mapResponse = response.data;
//       List<dynamic> listDynamic =
//           json.decode(mapResponse["files"]["accounts.json"]["content"]);

//       return listDynamic.map((dyn) => Account.fromMap(dyn)).toList();
//     } catch (e) {
//       print("Erro ao buscar contas: $e");
//       return [];
//     }
//   }

//   Future<void> addAccount(Account account) async {
//     try {
//       List<Account> listAccounts = await getAll();
//       listAccounts.add(account);

//       List<Map<String, dynamic>> listContent =
//           listAccounts.map((acc) => acc.toMap()).toList();
//       String content = json.encode(listContent);

//       Response response = await _dio.post(
//         url,
//         options: Options(headers: {"Authorization": "Bearer $gitHubApiKey"}),
//         data: json.encode({
//           "description": "account.json",
//           "public": true,
//           "files": {
//             "accounts.json": {
//               "content": content,
//             }
//           }
//         }),
//       );

//       if (response.statusCode.toString().startsWith("2")) {
//         print("Requisição de adição bem-sucedida (${account.name}).");
//       } else {
//         print("Requisição falhou (${account.name}).");
//       }
//     } catch (e) {
//       print("Erro ao adicionar conta: $e");
//     }
//   }
// }
