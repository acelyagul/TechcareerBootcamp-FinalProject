# KariyerNet Filter Test 

Bu proje, kariyer.net iş arama sayfasındaki il,içe,tarih ve pozisyon seviyesi filtrelerinin eklenmesi ve çıkarılması senaryolarını test etmektedir. Test senaryoları aşağıdaki gibidir:

* test case 1-check the filter page : Kariyer.net adresine gidilir. İş arama sayfasına yönlendirilir. Gerekli filtreler seçilir.Seçilen filtrelerin eklendiği kontrol edilir. Eklene sonrasında ilan sayısının azaldığı görülmektedir. 
* test case 2-check the clear filters and date filter: Kariyer.net adresine gidilir. İş arama sayfasına yönlendirilir. Gerekli filtreler seçilir.Tarih filtresi son 15 gün seçilir. Test case 1' de seçilen son 3 gün filtresine göre daha fazla iş ilanı olduğu görülür. Filtreleri temizle butonuna tıklanır. İş sayısının filtreli duruma göre artmış olduğu kontrol edilir.

## Kurulum Adımları

1- Bash ekranı açılır.
`

2- TechcareerBootcamp-FinalProject reposu lokal cihaza kopyalanır.

 ``` git clone https://github.com/acelyagul/TechcareerBootcamp-FinalProject.git ```
 
 3- Klasöre gidilir. 
 
 ``` cd TechcareerBotcamp-FinalProject ```
 
 4- requirements.txt dosyası sayesinde gerekli kütüphaneler yüklenir. 
 
 ``` pip3 install -r requirements.txt ```
 
 5- Ardından test dosyaları çalıştırılır.
 
 ``` robot Tests/KariyerNetFilterTest.robot  ```
 
 Sonuçlar "Results" klasörü altında raporlanmaktadır. 

