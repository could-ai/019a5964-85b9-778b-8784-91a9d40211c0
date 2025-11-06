import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perkembangan Media Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Georgia',
      ),
      home: const AcademicParagraphPage(),
    );
  }
}

class AcademicParagraphPage extends StatefulWidget {
  const AcademicParagraphPage({super.key});

  @override
  State<AcademicParagraphPage> createState() => _AcademicParagraphPageState();
}

class _AcademicParagraphPageState extends State<AcademicParagraphPage> {
  int _selectedIndex = 0;

  final List<ParagraphData> _paragraphs = [
    ParagraphData(
      title: 'Transformasi Digital dalam Komunikasi Masyarakat',
      content:
          'Perkembangan teknologi media digital telah menghadirkan transformasi fundamental dalam pola komunikasi masyarakat kontemporer. Revolusi digital yang dimulai pada akhir abad ke-20 dan terus berkembang pesat hingga era milenial ini telah mengubah paradigma komunikasi konvensional yang bersifat linear dan searah menjadi komunikasi interaktif dan multidireksional. Fenomena ini ditandai dengan proliferasi platform media sosial, aplikasi perpesanan instan, serta berbagai kanal komunikasi digital yang memfasilitasi pertukaran informasi secara real-time tanpa dibatasi oleh barrier geografis maupun temporal. Transformasi ini tidak hanya mempengaruhi aspek teknis komunikasi, namun juga membawa implikasi sosiologis yang signifikan terhadap struktur interaksi sosial, pembentukan identitas kolektif, serta dinamika relasi interpersonal dalam masyarakat modern.',
      category: 'Transformasi Digital',
    ),
    ParagraphData(
      title: 'Disrupsi Pola Komunikasi Tradisional',
      content:
          'Era digitalisasi telah mendisrupsi secara masif pola komunikasi tradisional yang telah mengakar dalam struktur sosial masyarakat selama berabad-abad. Media konvensional seperti surat menyurat, komunikasi tatap muka, serta medium komunikasi massa tradisional seperti surat kabar, radio, dan televisi mengalami redefinisi peran dan fungsi dalam ekosistem komunikasi kontemporer. Kemunculan internet dan teknologi mobile computing telah mengakselerasi transisi menuju komunikasi berbasis digital yang menawarkan efisiensi, kecepatan, dan aksesibilitas yang tidak tertandingi oleh medium komunikasi konvensional. Pergeseran paradigma ini menghadirkan karakteristik komunikasi yang bersifat asinkronus, memungkinkan individu untuk mengakses, memproduksi, dan mendistribusikan informasi secara independen tanpa intermediasi institusi media tradisional. Konsekuensinya, hierarki komunikasi massa yang sebelumnya didominasi oleh gatekeepers profesional mengalami demokratisasi, memberikan ruang partisipasi yang lebih luas bagi masyarakat dalam discourse publik.',
      category: 'Disrupsi Komunikasi',
    ),
    ParagraphData(
      title: 'Konvergensi Media dan Multimodalitas',
      content:
          'Perkembangan media digital telah memfasilitasi konvergensi berbagai modalitas komunikasi dalam satu platform terintegrasi, menghadirkan fenomena multimodalitas dalam praktik komunikasi masyarakat. Platform digital kontemporer mengintegrasikan teks, audio, visual, dan elemen interaktif dalam satu ekosistem komunikasi yang kohesif, memungkinkan pengguna untuk mengekspresikan pesan melalui multiple channels secara simultan. Konvergensi media ini mentransformasi literasi komunikasi masyarakat, menuntut kompetensi multiliteral yang mencakup kemampuan untuk menginterpretasi dan memproduksi konten dalam berbagai format media. Fenomena ini juga menghadirkan kompleksitas baru dalam studi komunikasi, di mana makna tidak lagi dikonstruksi semata-mata melalui teks verbal, namun melalui orchestration berbagai semiotic resources yang saling berkontribusi dalam pembentukan signifikasi. Implikasinya, proses encoding dan decoding pesan dalam komunikasi digital menjadi lebih kompleks, melibatkan negotiation antara berbagai modes of representation yang tersedia dalam platform digital.',
      category: 'Konvergensi Media',
    ),
    ParagraphData(
      title: 'Restrukturisasi Ruang Publik Digital',
      content:
          'Media digital telah mengkonstruksi ruang publik virtual yang mentransformasi dinamika deliberasi dan partisipasi sipil dalam masyarakat. Konsep sphere publik yang diintroduksi oleh Habermas mengalami rekonfigurasi dalam konteks digital, di mana platform media sosial dan forum online menjadi arena baru untuk diskursus publik dan formasi opini kolektif. Ruang publik digital ini memiliki karakteristik yang distingtif dibandingkan dengan ruang publik fisik tradisional, termasuk aksesibilitas yang lebih inklusif, anonymity yang memungkinkan ekspresi yang lebih bebas, serta persistensi konten yang memfasilitasi refleksi dan deliberasi yang lebih extended. Namun, restrukturisasi ini juga menghadirkan problematika baru, termasuk polarisasi opini akibat algorithm-driven echo chambers, proliferasi misinformasi dan disinformasi, serta fragmentasi discourse publik ke dalam multiple publics yang terisolasi. Fenomena ini menunjukkan bahwa transformasi komunikasi digital membawa implikasi yang ambivalen terhadap kualitas demokrasi deliberatif dalam masyarakat kontemporer.',
      category: 'Ruang Publik Digital',
    ),
    ParagraphData(
      title: 'Rekonfigurasi Identitas dan Presentasi Diri',
      content:
          'Perkembangan media digital telah menghadirkan dimensi baru dalam konstruksi identitas dan presentasi diri dalam interaksi sosial masyarakat. Platform digital menyediakan affordances yang memungkinkan individu untuk melakukan impression management dan identity performance dengan tingkat kontrol yang lebih tinggi dibandingkan dengan interaksi tatap muka. Konsep self-presentation yang dikembangkan oleh Goffman mengalami elaborasi dalam konteks digital, di mana individu dapat mengkurasi representasi diri melalui seleksi dan editing konten yang ditampilkan di profil digital mereka. Fenomena ini menghasilkan multiplisitas identitas digital yang dapat berbeda dengan identitas offline, menciptakan kompleksitas dalam authentic self-expression. Media digital juga memfasilitasi formasi dan maintenance komunitas berbasis identitas yang melampaui batasan geografis, memungkinkan individu dengan interest atau karakteristik spesifik untuk membentuk affinity spaces yang memperkuat sense of belonging dan collective identity. Namun, fenomena ini juga menimbulkan pertanyaan kritis tentang autentisitas identitas digital dan potensi discrepancy antara online persona dengan offline reality.',
      category: 'Identitas Digital',
    ),
    ParagraphData(
      title: 'Akselerasi Difusi Informasi dan Implikasinya',
      content:
          'Era digital telah mengakselerasi kecepatan difusi informasi dalam masyarakat dengan magnitude yang belum pernah terjadi dalam sejarah komunikasi manusia. Platform media sosial dan aplikasi messaging memfasilitasi penyebaran informasi secara viral dengan mekanisme network effects dan social amplification, di mana satu pesan dapat mencapai jutaan individu dalam hitungan jam atau bahkan menit. Akselerasi ini mentransformasi cara masyarakat mengkonsumsi berita dan informasi, menggeser dari scheduled consumption yang terstruktur menuju continuous flow of information yang berlangsung 24/7. Implikasinya, masyarakat mengalami information overload yang mengharuskan pengembangan strategi coping dan filtering untuk mengelola overwhelming volume informasi yang tersedia. Fenomena ini juga menghadirkan tantangan dalam verifikasi akurasi informasi, di mana kecepatan penyebaran seringkali mengungguli proses fact-checking yang teliti, mengakibatkan proliferasi hoax dan misinformasi yang dapat berdampak signifikan terhadap formasi opini publik dan decision-making masyarakat.',
      category: 'Difusi Informasi',
    ),
    ParagraphData(
      title: 'Transformasi Relasi Interpersonal',
      content:
          'Media digital telah merekonfigurasi fundamental nature relasi interpersonal dalam masyarakat kontemporer, menghadirkan mode baru dalam inisiasi, maintenance, dan terminasi hubungan sosial. Komunikasi mediasi teknologi (Computer-Mediated Communication/CMC) telah menjadi komplemen atau bahkan substitusi dari interaksi tatap muka dalam berbagai konteks relasional, dari persahabatan hingga hubungan romantis. Platform digital menyediakan multiple channels untuk sustained contact yang memfasilitasi maintenance hubungan jarak jauh yang sebelumnya sulit dipertahankan. Konsep social presence dan media richness mengalami redefinisi dalam konteks digital, di mana teknologi seperti video call dan virtual reality semakin mempersempit psychological distance dalam komunikasi virtual. Namun, transformasi ini juga menghadirkan paradoks, di mana hyperconnectivity digital dapat koeksisten dengan social isolation dan diminished quality of interpersonal relationships. Fenomena phubbing, di mana individu lebih fokus pada device digital daripada interlocutor yang hadir secara fisik, mengilustrasikan tension antara konektivitas digital dan interpersonal engagement yang authentic.',
      category: 'Relasi Interpersonal',
    ),
    ParagraphData(
      title: 'Implikasi Ekonomi Politik Komunikasi Digital',
      content:
          'Perkembangan media digital tidak dapat dilepaskan dari dimensi ekonomi politik yang membentuk lanskap komunikasi kontemporer. Platform digital didominasi oleh korporasi teknologi raksasa yang mengoperasikan business model berbasis data extraction dan targeted advertising, mengkomodifikasi user-generated content dan aktivitas komunikasi pengguna menjadi aset ekonomi. Fenomena surveillance capitalism yang dikonseptualisasikan oleh Zuboff menunjukkan bagaimana komunikasi digital telah menjadi situs akumulasi kapital melalui monetisasi data personal dan behavioral prediction. Struktur ekonomi politik ini menghadirkan asymmetry of power antara platform owners dengan pengguna, di mana algoritma proprietary yang tidak transparan mengendalikan visibility konten dan flow informasi dalam ekosistem digital. Implikasinya, komunikasi digital bukan sekadar neutral technological tools, namun embedded dalam struktur kekuasaan yang membentuk siapa yang dapat berkomunikasi, dengan siapa, tentang apa, dan bagaimana pesan dikomunikasikan, menciptakan forms of digital inequality dan communication asymmetry dalam masyarakat.',
      category: 'Ekonomi Politik',
    ),
    ParagraphData(
      title: 'Regulasi dan Governansi Komunikasi Digital',
      content:
          'Transformasi komunikasi digital menghadirkan kompleksitas dalam aspek regulasi dan governansi yang menuntut framework kebijakan yang adaptif terhadap dinamika teknologi yang rapid evolving. Traditional regulatory frameworks yang dirancang untuk media konvensional menghadapi inadequacy dalam mengatur platform digital yang beroperasi dalam borderless digital space dan melibatkan multiple jurisdictions. Isu-isu seperti data privacy, hate speech, misinformation, content moderation, dan digital rights memerlukan pendekatan multi-stakeholder yang melibatkan pemerintah, platform operators, civil society, dan users dalam formulating governance mechanisms yang balancing antara freedom of expression dengan protection from harmful content. Munculnya regulasi seperti GDPR di Eropa dan various national digital regulations menunjukkan upaya untuk establishing normative frameworks dalam komunikasi digital. Namun, tension antara national sovereignty dengan global nature internet, serta antara commercial interests platform dengan public interest, menciptakan contested terrain dalam digital communication governance yang terus mengalami negotiation dan redefinition.',
      category: 'Regulasi Digital',
    ),
    ParagraphData(
      title: 'Prospek Futuristik Komunikasi Digital',
      content:
          'Perkembangan teknologi emerging seperti artificial intelligence, Internet of Things, virtual reality, dan augmented reality mengindikasikan bahwa transformasi komunikasi digital akan terus berlanjut dengan trajectory yang semakin sophisticated dan pervasive. Komunikasi masa depan diprediksi akan semakin immersive, dengan blurring boundaries antara physical dan virtual realities dalam metaverse dan extended reality environments. AI-mediated communication akan semakin prevalent, di mana chatbots, virtual assistants, dan AI-generated content akan menjadi integral part dalam ekosistem komunikasi. Perkembangan Brain-Computer Interfaces bahkan membuka kemungkinan direct neural communication yang bypassing traditional linguistic encoding. Namun, prospek futuristik ini juga menghadirkan ethical concerns dan societal challenges yang kompleks, termasuk pertanyaan tentang human agency dalam communication increasingly mediated oleh algorithmic systems, preservation of human authentic connections dalam era hypermediation, serta implications terhadap cognitive capacities dan social skills dalam masyarakat yang heavily dependent pada technological mediation. Oleh karena itu, critical examination dan thoughtful navigation terhadap ongoing digital transformation menjadi imperatif untuk ensuring bahwa perkembangan komunikasi digital contributes positively terhadap human flourishing dan social wellbeing.',
      category: 'Prospek Masa Depan',
    ),
  ];

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Paragraf berhasil disalin ke clipboard'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Perkembangan Media Digital & Komunikasi Masyarakat',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          // Sidebar Navigation
          Container(
            width: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(2, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.indigo[50],
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.indigo[100]!,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Koleksi Paragraf',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${_paragraphs.length} paragraf akademis',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.indigo[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: _paragraphs.length,
                    itemBuilder: (context, index) {
                      final isSelected = _selectedIndex == index;
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.indigo[500]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          dense: true,
                          leading: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.white
                                  : Colors.indigo[100],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? Colors.indigo[700]
                                      : Colors.indigo[900],
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            _paragraphs[index].category,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.grey[800],
                            ),
                          ),
                          subtitle: Text(
                            _paragraphs[index].title,
                            style: TextStyle(
                              fontSize: 11,
                              color: isSelected
                                  ? Colors.white.withOpacity(0.9)
                                  : Colors.grey[600],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          selected: isSelected,
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 900),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Card
                      Card(
                        elevation: 2,
                        shadowColor: Colors.indigo.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.indigo[400]!,
                                Colors.indigo[600]!,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      _paragraphs[_selectedIndex].category,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                _paragraphs[_selectedIndex].title,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.3,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'Paragraf ${_selectedIndex + 1} dari ${_paragraphs.length}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Content Card
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.article_outlined,
                                    color: Colors.indigo[700],
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Paragraf Akademis',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo[700],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(height: 32),
                              SelectableText(
                                _paragraphs[_selectedIndex].content,
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 2.0,
                                  color: Colors.grey[800],
                                  letterSpacing: 0.3,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(height: 32),
                              // Action Buttons
                              Row(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () => _copyToClipboard(
                                      _paragraphs[_selectedIndex].content,
                                    ),
                                    icon: const Icon(Icons.copy, size: 18),
                                    label: const Text('Salin Paragraf'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.indigo[600],
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 14,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  OutlinedButton.icon(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text('Informasi Paragraf'),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kategori: ${_paragraphs[_selectedIndex].category}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                'Jumlah kata: ${_paragraphs[_selectedIndex].content.split(' ').length}',
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                'Jumlah karakter: ${_paragraphs[_selectedIndex].content.length}',
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: const Text('Tutup'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.info_outline, size: 18),
                                    label: const Text('Info'),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.indigo[700],
                                      side: BorderSide(
                                        color: Colors.indigo[300]!,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 14,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Navigation Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (_selectedIndex > 0)
                            TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex--;
                                });
                              },
                              icon: const Icon(Icons.arrow_back),
                              label: const Text('Paragraf Sebelumnya'),
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.indigo[700],
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          if (_selectedIndex < _paragraphs.length - 1)
                            TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex++;
                                });
                              },
                              icon: const Icon(Icons.arrow_forward),
                              label: const Text('Paragraf Selanjutnya'),
                              iconAlignment: IconAlignment.end,
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.indigo[700],
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ParagraphData {
  final String title;
  final String content;
  final String category;

  ParagraphData({
    required this.title,
    required this.content,
    required this.category,
  });
}
