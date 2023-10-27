void main() async {
  print('Start Main');

  try {
    final value = await httpGet('https://manu.dev.com');
    print(value);
  } catch (err) {
    print(err);
  }

  print('End of the program');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Error de la peticion';
  //return 'Tenemos un valor de la peticion';
}
