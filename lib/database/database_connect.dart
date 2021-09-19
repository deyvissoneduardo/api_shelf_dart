import 'package:mysql1/mysql1.dart';

class DatabaseConnect {
  Future<MySqlConnection> openConnection() {
    return MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      user: 'root',
      password: '123456',
      db: 'testebd',
    ));
  }
}
