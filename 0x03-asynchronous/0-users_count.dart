Future<int> fetchUsersCount() => Future.delayed(
  const Duration(seconds: 2),
  () => 19,
);

Future<void> usersCount() async => 
  print(await fetchUsersCount());

