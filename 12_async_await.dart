void main() async {
  print('Inicio del programa');

  try {
    final value = await getHttp('https://migueceb.dev');
    print('exito: $value');
  } on Exception catch(err) { // On entra cuando tenemos este tipo de error controlado
    print('Tenemos una Exception: $err');
  } catch (err){
    print('Ops, algo ha sucedido en el proceso: $err');
  } finally {
    print('Fin del try y catch');
  }
  print('Fin del programa');
}

// una funcion asyncrona siempre regresa un Future
Future<String> getHttp(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw Exception('No hay parametros en el URL');
}
