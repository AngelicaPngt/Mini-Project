class Budaya {
  final String title;
  final String pathImage;
  final String desc;
  final String type;

  const Budaya({
    required this.title,
    required this.pathImage,
    required this.desc,
    required this.type,
  });
}

const allBudaya = [
  //Kesenian
  Budaya(
      title: "Tari Kecak",
      pathImage: "assets/images/budaya/TariKecak.jpg",
      desc:
          "Tujuan awal dari dilakukannya Tari Kecak adalah bentuk komunikasi dengan Tuhan dan roh-roh leluhur dalam menyampaikan harapan-harapan. Tari Kecak juga mengisahkan cerita Ramayana. Di mana saat Rama berjuang menyelamatkan Shinta, Rama dibantu oleh puluhan kera untuk melawan Rahwana.",
      type: "Kesenian"),
  Budaya(
      title: "Wayang Kulit Bali",
      pathImage: "assets/images/budaya/WayangKulitBali.jpg",
      desc:
          "Wayang Kulit Bali dimainkan oleh dalang profesional yang bercerita sambil menyenandungkan tembang khas Bali. Iringan musik dari alat-alat musik tradisional Bali membuat pertunjukan makin menarik.",
      type: "Kesenian"),
  Budaya(
      title: "Arja",
      pathImage: "assets/images/budaya/arja.jpeg",
      desc:
          "Arja adalah kesenian tradisional khas Bali yang mirip dengan opera atau bisa juga disebut sebagai dramatari. Arja yang mengandung cerita panji sudah ada sejak abag ke-18 Masehi. Pemeran opera Arja menari, menyanyi, dan berdialog sesuai alur cerita. ",      
      type: "Kesenian"),
  Budaya(
      title: "Tari Legong",
      pathImage: "assets/images/budaya/TariLegong.jpeg",
      desc:
          "Kesenian tradisional khas Bali ini bercerita tentang kisah cinta Raja Lasem. Gerakan luwes namun tetap dinamis dengan power yang mantap dan gerakan bola mata menjadi ciri khasnya.",
      type: "Kesenian"),
  Budaya(
      title: "Tari Barong",
      pathImage: "assets/images/budaya/TariBarong.jpg",
      desc:
          " Tarian ini sangat identik dengan kebudayaan Pra-Hindu. Kostum penari dan setiap gerakannya merepresentasikan pertarungan Adharma (sifat tidak terpuji) dan Dharma (sifat terpuji). Dharma digambarkan degan kostum binatang berkaki empat. Sedangkan Adharma digambarkan dengan kostum yang memiliki dua taring runcing.",
      type: "Kesenian"),
  //Tradisi
  Budaya(
      title: "Ngaben",
      pathImage: "assets/images/budaya/Ngaben.jpg",
      desc:
          "Ngaben merupakan adat istiadat Bali yang biasa dilakukan ketika salah satu anggota keluarganya meninggal dunia. Upacara ini dilakukan dengan membakar mayat atau kremasi jenazah. Makna dari ngaben adalah mengembalikkan roh yang telah meninggal dunia ke tempat asalnya, sebagai tanda keikhlasan dari keluarga yang ditinggalkan.",
      type: "Tradisi"),
  Budaya(
      title: "Melasti",
      pathImage: "assets/images/budaya/UpacaraMelasti.png",
      desc:
          "Sebelum pelaksanaan hari raya Nyepi, umat Hindu di Bali biasa melaksanakan upacara Melasti. Upacara ini dilakukan dengan mendatangi beberapa sumber mata air, seperti pantai dan bermakna untuk menyucikan diri.",
      type: "Tradisi"),
  Budaya(
      title: "Mepandes",
      pathImage: "assets/images/budaya/Mepandes.jpg",
      desc:
          "Upacara adat ini juga dikenal dengan nama Potong Gigi. Biasanya, yang melaksanakan upacara ini adalah anak-anak yang dianggap telah beranjak dewasa. Adapun, gigi taring bagian atas sang anak akan dikikis. Hal itu dilakukan untuk menghilangkan sifat buruk yang ada di dalam diri manusia.",
      type: "Tradisi"),
  Budaya(
      title: "Nyepi",
      pathImage: "assets/images/budaya/nyepi.jpg",
      desc:
          "Upacara dan adat istiadat Bali yang terakhir adalah Nyepi. Perayaan ini dilakukan selama satu hari lamanya dengan menahan hawa nafsu dan berdiam diri di rumah.",
      type: "Tradisi"),
 ];
