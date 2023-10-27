void main() async {
  print('Start Main');

  try {
    final value = await httpGet('https://manu.dev.com');
    print('Successfull: $value');
  } on Exception catch (err) {
    print('Tenemos una exception $err');
  } catch (err) {
    print('Algo terrible paso $err');
  } finally {
    print('Fin de try and catch');
  }

  print('End of the program');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No ahi parametros en la URL');
  //return 'Tenemos un valor de la peticion';
}
