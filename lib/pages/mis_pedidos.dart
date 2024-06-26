import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/objects.dart';
import 'package:kioskito_usuario/structure/table.dart';
import 'package:lottie/lottie.dart';

class MisPedidos extends StatefulWidget {
  const MisPedidos({super.key});

  @override
  State<MisPedidos> createState() => _MisPedidosState();
}

class _MisPedidosState extends State<MisPedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        backgroundColor: fondo,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.1,
              text: 'Mis Pedidos',
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 100,
              minF: 42,
              maxL: 1,
              posicionText: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.98,
              height: MediaQuery.of(context).size.height * 0.14,
              child: TableWidget(
                columns: const ['Id', 'Nombre Pedido', 'Más Información'],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .03,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 12,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const AutoSizeText(
                            'Papitas ya',
                            minFontSize: 12,
                            maxFontSize: 16,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          child: const BtnIconoInfo(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.1,
              text: 'Estado de mi Pedido',
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 100,
              minF: 36,
              maxL: 1,
              posicionText: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.98,
              height: MediaQuery.of(context).size.height * 0.14,
              child: TableWidget(
                columns: const ['En Espera', 'Preparando', 'Listo'],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        FittedBox(
                          fit: BoxFit.contain,
                          child: CircleAvatar(
                            radius: 35,
                            child: LottieBuilder.network(
                                'https://lottie.host/322887ea-8390-4668-aebc-1c21ab4c300d/jZGtNRJ5E4.json'),
                          ),
                        ),
                      ),
                      DataCell(
                        FittedBox(
                          fit: BoxFit.contain,
                          child: CircleAvatar(
                            radius: 35,
                            child: LottieBuilder.network(
                                'https://lottie.host/8edde0f2-826b-4db9-baa9-8d6f116d962e/CvIBA4gvSi.json'),
                          ),
                        ),
                      ),
                      DataCell(
                        FittedBox(
                          fit: BoxFit.contain,
                          child: CircleAvatar(
                            radius: 35,
                            child: LottieBuilder.network(
                                'https://lottie.host/054b61fc-f31b-4352-98dd-e84c3a6932fc/es7JWKzSe3.json'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
