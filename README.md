 # Komik

<div align="center">

![801001557](https://github.com/Adelievs000/Komik/assets/111561203/518b9de5-74be-4a3e-bc6d-9af13fee3d32)


•
[Tentang](#scroll-tentang)
•
[Screenshot](#rice_scene-screenshot)
•
[Dokumentasi](#blue_book-dokumentasi)

  
</div>

## :bookmark_tabs: Menu

- [Tentang](#scroll-tentang)
- [Screenshot](#rice_scene-screenshot)
- [Deskripsi Data](#heavy_check_mark-deskripsi-data)
- [Dokumentasi](#blue_book-dokumentasi)
- [Requirements](#exclamation-requirements)
- [Struktur Folder](#open_file_folder-struktur-folder)
- [Penulis](#smiley_cat-penulis)

## :scroll: Tentang

Komik adalah salah satu media bacaan yang banyak diminati, baik dari kalangan anak-anak maupun orang dewasa. Komik merupakan sebuah cerita yang divisualisasikan dalam bentuk susunan gambar beserta teks cerita yang terurut sesuai dengan buah pemikiran si pembuat komik tersebut. Sekarang komik tidak hanya dapat dibaca melalui media cetak, seperti buku, koran, ataupun majalah saja, akan tetapi dapat dinikmati dari berbagai macam media digital, seperti web. Salah satu web yang lengkap dan terupdate untuk membaca komik, berupa manhwa, manga, ataupun manhua adalah web *1kissmanga*. Web ini mengelompokkan komik berdasar genre, baik action, comedy, romance, dll. Kemudian juga di web *1kissmanga* ini disediakan urutan komik berdasar trending, new, late, most views, rating, dll. Pada projek kali ini, akan dilakukan scraping untuk halaman komik trending.
  
## :rice_scene: Screenshot
GitHub Action adalah alat yang ampuh untuk membangun kode, menjalankan tes & tugas berulang lainnya yang terkait dengan pengembangan perangkat lunak. Ini juga merupakan alat yang ampuh, jika agak kurang dimanfaatkan untuk menyebarkan web scraper yang ditulis dalam R ke internet dan secara otomatis menerbitkan salinan data tergores yang dikontrol versi menggunakan GitHub. Salinan data ini akan dimasukkan ke dalam database MongoDB Atlas.
  
MongoDB Atlas adalah database cloud yang dikelola sepenuhnya yang menangani semua kompleksitas penerapan, pengelolaan, dan pemulihan penerapan Anda di penyedia layanan cloud pilihan Anda (AWS, Azure, dan GCP). MongoDB Atlas adalah cara terbaik untuk menerapkan, menjalankan, dan menskalakan MongoDB di cloud.
  
Berikut tampilan dari scraping otomatis github action dan MongoDB Atlas setelah dilakukan scraping :

![image](https://github.com/Adelievs000/Komik/assets/111561203/7b6f3992-7dff-4e0b-adea-93676250db05)

![image](https://github.com/Adelievs000/Komik/assets/111561203/63727a66-e735-44cc-b211-20524045043a)



## :heavy_check_mark: Deskripsi Data

Pada database ini akan digunakan teknik parsing HTML dengan Rvest pada website 1stkissmanga untuk data komik yang trending dengan menggunakan url berikut: https://1stkissmanga.me/manga-genre/romance/page/52/?m_orderby=trending. Data yang ingin didapatkan adalah Judul, Rating, Genre, Chapter Terbaru dan Summary tiap komik.


## :blue_book: Dokumentasi 

Adapun tahapan dalam teknik parsing HTML adalah sebagai berikut :

1. Buka halaman web yang ingin dilakukan scraping
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/288042b6-7bca-4555-94c0-356bfdde579a)

2. Klik kanan pada halaman web, lalu pilih inspect
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/4dcc15ed-bc1d-4447-8c38-4cd8f4163772)

3. Klik elements, lalu klik tanda panah di sebelah kiri elements
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/7e62428c-754d-430f-82f6-4351c433cc54)

4. Arahkan kusor ke objek yang akan di scrape
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/5d9f82ef-a40d-430a-9e42-ca1f579ce07c)

5. Lalu copy kan class ( beri titik sebelum class) dan selector pada fungsi rvest yang digunakan
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/5c5c1d7d-eea5-4d80-80f9-c90e6b6d43b0)

6. Konteks yang di scraping dijadikan dalam 1 tabel

  Adapun konteks adalah sebagai berikut :
  
  1). Judul Komik
  
  2). Rating
  
  3). Genre
  
  4). Chapter Terbaru
  
  5). Summary
  
  ![image](https://github.com/Adelievs000/Komik/assets/111561203/65ff8150-9284-4fed-acc4-6190a083d756)

  ![image](https://github.com/Adelievs000/Komik/assets/111561203/5d2d1ca2-0d20-4751-98c4-e87cb2a51559)

  ![image](https://github.com/Adelievs000/Komik/assets/111561203/ed70f446-2858-41bb-8ddf-25f798603840)



## :exclamation: Requirements

- Paket R yang digunakan yaitu :

library(rvest)
  
library(tidyverse)

library(mongolite)

  

## :open_file_folder: Struktur Folder

```
.
├── .github/workflows
|   ├── main.yml
├── Komik.Rproj
├── Komik_scrape.R           # script R for the project
├── .gitignore
├── LICENSE
└── README.md
```

## :smiley_cat: Penulis


[Adeline Vinda Septiani](https://github.com/Adelievs000) G1501221006

![image](https://user-images.githubusercontent.com/111561203/227850602-2c7eb4c0-0eea-4fe5-80e3-c9793cc7d3b4.png)


Pembimbing : [Alfa Nugraha](https://github.com/alfanugraha) G1501211013
