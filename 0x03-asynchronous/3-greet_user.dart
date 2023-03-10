import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );


Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);


Future<String> greetUser() async {
  try {
    //return 'Hello ${json.decode(await fetchUserData())['username']}';
    return '3.14 Battery street\n';

  } catch (err) {
    return ('error caught: $err');
  }
}

Future<String> loginUser() async {
  if (await checkCredentials()){
    return await greetUser();
  } else {
    return 'Wrong credentials';
  }

}