import 'package:flutter/material.dart';

void main() {
  runApp(const DireitoApp());
}

class DireitoApp extends StatelessWidget {
  const DireitoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Princípios do Direito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.amber),
        ),
        cardTheme: CardThemeData(
          color: const Color(0xFF1E1E1E),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: Colors.amber,
        ).copyWith(secondary: Colors.amberAccent),
      ),
      home: const RamosDoDireitoScreen(),
    );
  }
}

// Base de dados simulada contendo os princípios de cada ramo
final Map<String, List<Map<String, String>>> dadosPrincipios = {
  'Direito Constitucional': [
    {
      'titulo': 'Supremacia da Constituição',
      'descricao':
          'A Constituição é a norma máxima do ordenamento jurídico, prevalecendo sobre todas as demais leis.',
    },
    {
      'titulo': 'Separação dos Poderes',
      'descricao':
          'O Estado é estruturado com base em três poderes independentes: Executivo, Legislativo e Judiciário.',
    },
    {
      'titulo': 'Dignidade da Pessoa Humana',
      'descricao':
          'Assegura que os direitos fundamentais sejam respeitados, impedindo práticas que violem a integridade dos cidadãos.',
    },
    {
      'titulo': 'Legalidade',
      'descricao':
          'Ninguém será obrigado a fazer ou deixar de fazer algo senão em virtude de lei.',
    },
    {
      'titulo': 'Igualdade',
      'descricao':
          'Todos são iguais perante a lei, sem distinção, garantindo tratamento equitativo pelo Estado.',
    },
    {
      'titulo': 'Proporcionalidade',
      'descricao':
          'Exige que as medidas adotadas pelo Estado sejam adequadas, necessárias e proporcionais ao objetivo.',
    },
    {
      'titulo': 'Publicidade',
      'descricao':
          'Atos administrativos e decisões judiciais devem ser divulgados para garantir transparência e controle social.',
    },
    {
      'titulo': 'Devido Processo Legal',
      'descricao':
          'Nenhuma pessoa pode ser privada de seus direitos sem um processo regular e respeito às garantias legais.',
    },
    {
      'titulo': 'Segurança Jurídica',
      'descricao':
          'As normas e decisões devem ser previsíveis, garantindo estabilidade e confiança nas relações.',
    },
    {
      'titulo': 'Efetividade',
      'descricao':
          'A Constituição deve ser aplicada de maneira concreta para assegurar a real eficácia dos direitos previstos.',
    },
  ],
  'Direito Civil': [
    {
      'titulo': 'Sociabilidade',
      'descricao':
          'Afirma a precedência do interesse coletivo sobre o individual, adequando-se aos princípios do Estado Social.',
    },
    {
      'titulo': 'Eticidade',
      'descricao':
          'Fundamenta-se na dignidade humana e exige a observância da boa-fé, probidade e equidade nas relações civis.',
    },
    {
      'titulo': 'Operabilidade',
      'descricao':
          'Busca a simplicidade do sistema e a sua efetividade através da utilização de cláusulas abertas e gerais.',
    },
    {
      'titulo': 'Dignidade da Pessoa Humana',
      'descricao':
          'Valor fundamental que condiciona a razão e o fim das normas ao espírito humano, promovendo a despatrimonialização do direito.',
    },
    {
      'titulo': 'Boa-fé Objetiva',
      'descricao':
          'Exige que os integrantes de uma relação negocial atuem em respeito aos deveres de prudência, lealdade, confiança e cooperação.',
    },
    {
      'titulo': 'Igualdade',
      'descricao':
          'Impõe que todos os indivíduos, dada a sua idêntica dignidade, sejam tratados de forma paritária nas relações jurídico-civis.',
    },
    {
      'titulo': 'Autonomia Privada',
      'descricao':
          'Consiste no poder dos particulares de regular, pelo exercício da própria vontade, as relações em que participam, nos limites da lei.',
    },
    {
      'titulo': 'Responsabilidade Civil',
      'descricao':
          'Estabelece o dever jurídico sucessivo de reparação face a danos e prejuízos causados a terceiros.',
    },
    {
      'titulo': 'Tutela da Personalidade',
      'descricao':
          'Reconhece o complexo de direitos inatos e intransmissíveis que garantem a integridade física, moral e intelectual do indivíduo.',
    },
    {
      'titulo': 'Função Social',
      'descricao':
          'Reconhece que institutos como a propriedade e os contratos devem ser utilizados e destinados também ao interesse coletivo.',
    },
  ],
  'Direito Penal': [
    {
      'titulo': 'Legalidade',
      'descricao':
          'Estabelece que não há crime sem lei anterior que o defina, nem pena sem prévia cominação legal, evitando arbitrariedades e garantindo segurança jurídica.',
    },
    {
      'titulo': 'Anterioridade da Lei Penal',
      'descricao':
          'Determina que a norma penal deve ser anterior ao fato que pretende punir. Ninguém pode ser condenado por uma conduta que não era crime no momento da prática.',
    },
    {
      'titulo': 'Irretroatividade da Lei Penal',
      'descricao':
          'A lei penal não pode retroagir para prejudicar o cidadão. No entanto, se uma norma posterior for mais benéfica ao acusado, ela deve ser aplicada para beneficiá-lo.',
    },
    {
      'titulo': 'Insignificância',
      'descricao':
          'Condutas que causem dano irrelevante ou mínimo ao bem jurídico tutelado não devem ser punidas, buscando evitar punições desnecessárias e desproporcionais.',
    },
    {
      'titulo': 'Culpabilidade',
      'descricao':
          'Apenas pode ser punido aquele que agiu com dolo ou culpa. Não se admite a responsabilidade penal objetiva; exige-se a culpa comprovada.',
    },
    {
      'titulo': 'Individualização da Pena',
      'descricao':
          'Garante que a pena seja aplicada de forma individualizada, considerando a gravidade do crime, as circunstâncias do caso e as características do condenado.',
    },
    {
      'titulo': 'Proporcionalidade',
      'descricao':
          'A pena imposta deve ser proporcional à gravidade do delito, assegurando que a punição esteja alinhada com o grau de reprovação social da conduta.',
    },
    {
      'titulo': 'Non Bis In Idem',
      'descricao':
          'Impede que uma mesma pessoa seja punida mais de uma vez pelo mesmo fato na esfera penal, evitando abusos e garantindo a estabilidade.',
    },
    {
      'titulo': 'Humanidade das Penas',
      'descricao':
          'Proíbe penas cruéis, desumanas ou degradantes, vedando a pena de morte (salvo guerra declarada), penas de caráter perpétuo, trabalhos forçados e banimento.',
    },
    {
      'titulo': 'Intervenção Mínima',
      'descricao':
          'O Direito Penal deve ser a última opção (ultima ratio) para a repressão de condutas, aplicando-se apenas quando outros ramos do Direito forem insuficientes.',
    },
  ],
  'Direito do Trabalho': [
    {
      'titulo': 'Valor Social do Trabalho',
      'descricao':
          'O trabalho é o meio pelo qual o indivíduo atinge sua plenitude, socializa-se e exercita suas potencialidades, servindo de mecanismo para conter a exclusão social.[cite: 3]',
    },
    {
      'titulo': 'Melhoria da Condição Social',
      'descricao':
          'Garante um rol de direitos fundamentais que visam aprimorar a condição de vida do trabalhador, evitando a precarização e promovendo a cidadania.[cite: 3]',
    },
    {
      'titulo': 'Proibição do Retrocesso Social',
      'descricao':
          'Impede que, no processo de efetivação dos direitos fundamentais, as conquistas sociais trabalhistas já alcançadas sejam desconstituídas ou reduzidas pelo Estado.[cite: 3]',
    },
    {
      'titulo': 'Dignidade da Pessoa Humana do Trabalhador',
      'descricao':
          'Reconhece a natureza livre do ser humano e sua capacidade de autodeterminação, servindo como premissa essencial para as políticas de proteção ao labor.[cite: 3]',
    },
    {
      'titulo': 'Liberdade Sindical',
      'descricao':
          'Princípio cardeal do direito coletivo que assegura o instinto gregário, o direito de união e a autonomia para defesa dos interesses da categoria.[cite: 3]',
    },
    {
      'titulo': 'Mínimo Existencial',
      'descricao':
          'A limitação financeira (reserva do possível) não pode inviabilizar políticas públicas, devendo-se garantir prestações que assegurem uma existência digna.[cite: 3]',
    },
    {
      'titulo': 'Interesse Coletivo',
      'descricao':
          'Protege o interesse de que é titular o grupo ou categoria, ultrapassando a esfera individual para irradiar efeitos sobre pessoas ligadas por uma relação jurídica base.[cite: 3]',
    },
  ],
};

class RamosDoDireitoScreen extends StatelessWidget {
  const RamosDoDireitoScreen({super.key});

  final List<String> ramos = const [
    'Direito Constitucional',
    'Direito Civil',
    'Direito Penal',
    'Direito do Trabalho',
    'Direito Tributário',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.balance),
        title: const Text('Ramos do Direito'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ramos.length,
        itemBuilder: (context, index) {
          final ramoSelecionado = ramos[index];

          return GestureDetector(
            onTap: () {
              if (dadosPrincipios.containsKey(ramoSelecionado)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrincipiosScreen(
                      titulo: ramoSelecionado,
                      principios: dadosPrincipios[ramoSelecionado]!,
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Módulo em desenvolvimento!')),
                );
              }
            },
            child: Card(
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ramoSelecionado,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.amber),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PrincipiosScreen extends StatelessWidget {
  final String titulo;
  final List<Map<String, String>> principios;

  const PrincipiosScreen({
    super.key,
    required this.titulo,
    required this.principios,
  });

  @override
  Widget build(BuildContext context) {
    final tituloCurto = titulo.split(' ').last;

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloCurto),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.balance),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: principios.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              iconColor: Colors.amber,
              collapsedIconColor: Colors.amber,
              title: Text(
                '${index + 1}. ${principios[index]['titulo']!}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    principios[index]['descricao']!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
