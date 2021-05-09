import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String word = 'hola mundo como estan soy hector';
    final key = encrypt.Key.fromUtf8('my 32 length key................');
    final iv = encrypt.IV.fromLength(16);

    final encrypter = encrypt.Encrypter(encrypt.AES(key));

    final encrypted = encrypter.encrypt(word, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    print(encrypted
        .base64); //Y4PvjQCs7ZQfXOgryxflkLEPDutEZ5k3JqEFCPF+ZBYT0XBfXvaymEwsAKInB7NR

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encriptacion',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Paquete Utilizado: encrypt: ^5.0.0',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Palabra Utilizada: $word',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Palabra Encryptada: ${encrypted.base64}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Palabra Utilizada: $decrypted',
            ),
          ],
        ),
      ),
    );
  }
}
