# Scrape Bist Sectors

This small script helps you to scrape sector information of all firms in bist from https://www.kap.org.tr/en/Sektorler
Bu küçük script bistteki firmaların sektör bilgilerini kolayca çekmenize yardımcı olmak için. 

# Usage

- Go to webpage: [https://www.kap.org.tr/en/Sektorler](https://www.kap.org.tr/en/Sektorler)
- Click **create excel file** button in the bottom of the page
- Open excel file and save it as a .xlsx file.
- Then use the path of this .xlsx file in the script.
- Running the script will create your nicely formatted excel file in the same folder as sectorinformation.xlsx
- Make sure you have the following R libraries: tidyverse, readxl, writexl.

# Türkçe Kullanılışı

- Linke gidin: [https://www.kap.org.tr/en/Sektorler](https://www.kap.org.tr/en/Sektorler)
- Sayfanın en altındaki **create excel file** tuşuna tıklayın
- Kaydettiğiniz excel dosyasını açıp .xlsx olarak kaydedecek şekilde farklı kaydet yapın.
- Kodun içindeki filepath kısmına yeni .xlsx dosyasının path'ini yapıştırın.
- Kodu çalıştırdığınızda sectorinformation.xlsx ismiyle yeni excel dosyanız aynı klasörde hazır olcak. 
- Gerekli olan libraryler: tidyverse, readxl, writexl.
