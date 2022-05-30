import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'TOP DESTINOS MAIS BUSCADOS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Corre que ta rolando muita promoção',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Eu quero',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF8FF04)),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network('https://mundoela.uai.com.br/wp-content/uploads/sites/27/2021/08/pexels-spencer-davis-4353813-scaled.jpg', width: 150),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          buildCard(
              imagem: 'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
              titulo: 'Pacote Cancún 2022/2023',
              transporte: 'Aéreo - Hotel All Inclusive',
              numDiarias: 5,
              numPessoas: 1,
              precoAntigo: 6819,
              precoAtual: 2819,
              numParcelas: 6
          ),
          buildCard(
            imagem: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/28/d5/c9/natural-pools-4-km-from.jpg?w=500&h=300&s=1',
            titulo: 'Pacote Maragogi 2023',
            transporte: 'Hotel All Inclusive',
            numDiarias: 7,
            numPessoas: 3,
            numParcelas: 12,
            precoAntigo: 4819,
            precoAtual: 3819,
          ),
          buildCard(
            imagem: 'https://lalarebelo.com/wp-content/uploads/2016/06/CAPA-post-filipinas-el-nido-dicas-palawan-alta-01-e1465074448259.jpg',
            titulo: 'Pacote Filipinas 2023',
            transporte: 'Hotel All Inclusive',
            numDiarias: 14,
            numPessoas: 2,
            numParcelas: 14,
            precoAntigo: 8819,
            precoAtual: 4819,
          ),
          buildCard(
            imagem: 'https://lalarebelo.com/wp-content/uploads/2016/06/CAPA-post-filipinas-el-nido-dicas-palawan-alta-01-e1465074448259.jpg',
            titulo: 'Pacote Filipinas 2023',
            transporte: 'Hotel All Inclusive',
            numDiarias: 14,
            numPessoas: 2,
            numParcelas: 14,
            precoAntigo: 8819,
            precoAtual: 4819,
          ),
        ],
      ),
    );
  }

  buildCard({
    required String imagem,
    required String titulo,
    required String transporte,
    required int numDiarias,
    required int numPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
}){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: Image.network(imagem),
          ),
          Padding(padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(transporte),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('$numDiarias Diarias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('$numPessoas Pessoa'),
                  ],
                ),
                const SizedBox(height: 8),
                Text.rich(
                  TextSpan(
                    text: 'A partir de: ',
                    children: <TextSpan>[
                      TextSpan(
                        text: 'R\$ $precoAntigo',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      /*TextSpan(
                        text:' \$3.99',
                      ),*/
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'R\$ $precoAtual',
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text('Taxa Grátis em até ${numParcelas}x'),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis',
                  style: TextStyle(
                    color: Colors.green[700], fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
