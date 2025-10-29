import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  void _showContactDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Contato'),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
                tooltip: 'Fechar',
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              ListTile(
                dense: true,
                leading: Icon(Icons.phone),
                title: Text('(11) 99999-9999'),
                subtitle: Text('Telefone'),
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.email),
                title: Text('contato@exemplo.com'),
                subtitle: Text('E-mail'),
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.location_on),
                title: Text('Rua Exemplo, 123 - São Paulo, SP'),
                subtitle: Text('Endereço'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showContactDialog(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0095F6),
        padding: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
      child: const Text(
        'Contact',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}


