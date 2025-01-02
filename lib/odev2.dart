//Odev2

//1- Android Studio ve Flutter SDK kurulumu bitirilmelidir. Ayrıca emülatör kurulumu yapınız.
//kurulumlar tamam

//5.soruyu burada tanımladım çünkü void main içinde sınıf tanımlamasına izin verilmiyor.

//5-Bir tane şekiller class’ı oluşturunuz ve 5 tane şekil object’i (objesi) tanımlayınız.
class Sekiller{
  late String kenarCesidi;
  late int kenarSayisi;
  int? kacKenarli;
  late int icAcilarToplami;
  ///Yamuk mu, Çokgen mi gibi..
  String? sekilTuru;

  Sekiller(this.kenarCesidi,this.kenarSayisi,this.kacKenarli,this.icAcilarToplami,this.sekilTuru);
}

void main() {


//2-Double olarak uzunKenar ve kısaKenar değişkenlerini alıp Dikdörtgenin alanını bulan bir fonksiyon yazınız.
//Ve bu fonksiyonu 4.76 ve 9.54 değerleriyle çağırınız.

  double dikdortgenAlanHesapla(double kisaKenar, double uzunKenar) {
    double alan = kisaKenar * uzunKenar;
    return alan;
  }

  print("2.sorunun cevabı: ${dikdortgenAlanHesapla(4.76, 9.54)}");
  print("------------------------");



  //3- Aşağıda açıklanan fonksiyonları ve main fonksiyonunu yazarak tamamlayınız:
  // Fonksiyonun Amacı: Bir tam sayı a ve b parametrelerini alarak, a değerini 2^(b-1) ile çarpan bir fonksiyon yazınız.

  int carp(int a,int b){
    int multiplyByTwo(int x){
      return x*2;
    }
    int result=a;
    for(int i=0;i<b-1;i++){
      result=multiplyByTwo(result);
    }
    return result;
  }

  //void main içinde direk bu şekilde kullanım yaptım.
  print("3. sorunun cevabı:  ${carp(5, 3)}");
  print("------------------------");


  //4-Girilen listeden girilen veriyi silen fonksiyon örneğini yazınız. (Cohorts’da ekleme metodunun örnegi var.)

  List<String> dizidenElemanSil(List<String> liste, String eleman) {
    liste.remove(eleman);

    return liste;
  }

  List<String> liste1 = ['Araba', 'Ev', 'Telefon'];

  print("Listenin ilk hali: $liste1");
  print("4.sorunun cevabı:  ${dizidenElemanSil(liste1, 'Telefon')}");



}
