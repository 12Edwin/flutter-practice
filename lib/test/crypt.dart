import 'package:encrypt/encrypt.dart';
import 'dart:convert';

final key = Key.fromUtf8('tu-clave-secreta-de-32-caractere'); // Debe ser la misma que en el backend

String toUrlSafeBase64(String base64) {
  return base64.replaceAll('+', '-').replaceAll('/', '_').replaceAll('=', '');
}

String fromUrlSafeBase64(String urlSafe) {
  urlSafe = urlSafe.replaceAll('-', '+').replaceAll('_', '/');
  while (urlSafe.length % 4 != 0) {
    urlSafe += '=';
  }
  return urlSafe;
}

String encrypt(String text) {
  final iv = IV.fromSecureRandom(16);
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  final encrypted = encrypter.encrypt(text, iv: iv);
  return '${toUrlSafeBase64(iv.base64)}.${toUrlSafeBase64(encrypted.base64)}';
}

String decrypt(String text) {
  final parts = text.split('.');
  final iv = IV.fromBase64(fromUrlSafeBase64(parts[0]));
  final encrypted = Encrypted.fromBase64(fromUrlSafeBase64(parts[1]));
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
  return encrypter.decrypt(encrypted, iv: iv);
}

void main(){
  const text = 'Edwin';
  const encrypted = 'keHnSyE948HFqcEqgNrm6w._GkAexsUpFFIxUePyIWmMQ';
  final decrypted = decrypt(encrypted);
  print('Texto original: $text');
  print('Texto encriptado: $encrypted');
  print('Texto desencriptado: $decrypted');
}