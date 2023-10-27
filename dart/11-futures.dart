void main() {
  print('Start Main');

  httpGet('https://manu.dev.com').then((value) {
    print(value);
  }).catchError((error) {
    print('Error $error');
  });

  print('End of the program');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Error en la peticion http';
//    return 'Respuesta de la peticion http';
  });
}
