import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSecuritySection(),
                SizedBox(height: 20),
                _buildPrivacySection(),
                SizedBox(height: 20),
                _buildOtherInformationSection(),
                SizedBox(height: 20),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSecuritySection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                
                Expanded(
                  child: Text(
                    'Tu cuenta está protegida',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.security, color: Colors.green, size: 50),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text('Ver detalles'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacySection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                
                Expanded(
                  child: Text(
                    'Verificación de privacidad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.privacy_tip, color: Colors.blue, size: 50),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text('Realizar la Verificación de privacidad'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherInformationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '¿Buscas otra información?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Buscar en la Cuenta de Google       >'),
          onTap: () {}, 
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Ver las opciones de ayuda               >'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Enviar comentarios                           >'),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Solo tú puedes ver tu configuración. También puedes revisar tu configuración de Maps, la Búsqueda u cualquier servicio de Google que uses con frecuencia. Google protege tu privacidad y la seguridad de tus datos.',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Icon(Icons.wifi_lock, color: Colors.blue, size: 50),
      ],
    );
  }
}