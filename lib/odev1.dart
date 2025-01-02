//✏️ Ödev-1

void main() {

  //2.soru a şıkkı
  int sayideneme = 5;
  String kelimedeneme = "abc";
  double sayi2deneme = 2.15;
  bool kontrol = true;
  dynamic karisik = "herşey olur";
  //dart dilinde char veri tipi olmadığı var olarak tanımladım
  //türünü string olarak ekledi
  var harf = 'a';

  print(" Sayı deneme: $sayideneme");
  print("Kelime deneme: $kelimedeneme");
  print(sayi2deneme);
  print(kontrol);
  print(karisik);
  print(harf);

  //2.soru b şıkkı
  //PascalCase
  int SayiDeneme = 50;
  //camelcase
  String kelimeDeneme = "kelime";
  //snake_case
  double sayi2_deneme = 5.15;

  print(SayiDeneme);
  print(kelimeDeneme);
  print(sayi2_deneme);

  //2 soru c şıkkı
  String adi = "mustafa";
  String soyadi = "arslan";
  int yas = 24;
  bool resitDurumu = true;

  print(adi);
  print(soyadi);
  print(yas);
  print(resitDurumu);
  print("Adı: $adi");
  print("Soyadi: $soyadi");
  print("Yaş: $yas");
  print("Reşit mi: $resitDurumu");
}