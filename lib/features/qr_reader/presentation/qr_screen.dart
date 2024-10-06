import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/core/app/router/app_routes.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@RoutePage()
class QRViewScreen extends StatefulWidget {
  const QRViewScreen({super.key});

  @override
  _QRViewScreenState createState() => _QRViewScreenState();
}

class _QRViewScreenState extends State<QRViewScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String? qrText;
  bool isModalOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: Colors.white,
                    borderRadius: 3,
                    borderLength: 30,
                    borderWidth: 5,
                    cutOutSize: 250,
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 190,
            right: 70,
            child: Text(
              "Поместите QR-код в рамку",
              style: AppTextStyle.text18,
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code;
      });

      if (scanData.code != null && !isModalOpen) {
        _showModalWithResult(scanData.code!);
      }
    });
  }

  void _showModalWithResult(String result) {
    setState(() {
      isModalOpen = true;
    });

    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            setState(() {
              isModalOpen = false;
            });
            return true;
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Результат сканирования',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(result, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).pushAndPopUntil(
                      const MainRoute(),
                      predicate: (route) => false,
                    );
                    setState(() {
                      isModalOpen = false;
                    });
                  },
                  child: const Text('Закрыть'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
