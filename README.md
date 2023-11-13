# Growtopia Shop

<b>Name: Fernando Valentino Sitinjak</b> <br>
<b>Student ID: 220608133</b> <br>

<details>
<summary>Tugas 7</summary>
1. <b>Stateless widget</b> adalah widget yang tidak berubah baik tampilan ataupun propertinya saat aplikasi sedang dijalankan. Widget ini tidak akan bisa dibuat kembali atau diubah ketika aplikasi yang kita gunakan sedang bekerja. Singkatnya, stateless widget adalah widget untuk tampilan statis

<b>Stateful widget</b> adalah widget yang dapat berubah seiring program dijalankan. Widget ini bersifat dinamis, sehingga dapat berubah-berubah baik tampilan, maupun propertinya. Widget ini dapat berubah-ubah dengan adanya sebuah interaksi atau respons terhadap suatu event yang terpicu ketika menerima action dari user ataupun menerima data.

2. <b>Widget yang digunakan</b>
   <ul>
   <li><b>MyHomePage</b>: Widget utama yang berguna untuk menampilkan semua item</li>
   <li><b>Appbar</b>: Widget yang menampilkan bar pada bagian atas aplikasi</li>
   <li><b>Scaffold</b>: Widget yang berguna untuk menampilkan kerangka pada aplikasi</li>
   <li><b>Icon</b>: Widget yang berguna untuk menampilkan icon, dalam konteks ini digunakan pada card</li>
   <li><b>ShopCard: Widget yang berguna untuk menampilkan item dalam bentuk card</b></li>
   <li><b>SnackBar</b>: Widget yang berguna untuk menampilkan pesan ketika item diklik</li>
   <li><b>Padding</b>: Widget yang digunakan untuk menambahkan jarak (padding) di sekitar kontennya</li>
   <li><b>Column</b>: Widget layout yang digunakan untuk menampilkan child widgets secara vertikal</li>
   <li><b>Container</b>: Widget yang berguna untuk mengatur posisi, ukuran, dan lainnya dari widget lain</li>
   <li><b>Center</b>: Widget yang berguna untuk mengatur posisi child ke tengah</li>
   <li><b>Text</b>: Widget yang berguna untuk membuat text</li>
   <li><b>GridView</b>: Widget yang berguna untuk menampilkan child dalam bentuk grid</li>
   <li><b>SingleChildScrollView</b>: Widget yang berguna untuk menampilkan child dalam bentuk yang scrollable</li>
   </ul>

3. <b>IMPLEMENTASI CHECKLIST</b>
   <ol>
   <li>Membuat program flutter baru dengan nama <b>growtopia_shop</b></li>
   <li>Melakukan beberapa import pada file <b>main.dart</b><br>
  
        import 'package:flutter/material.dart'; 
        // material.dart merupakan package yang berisikan widget-widget yang dapat digunakan
        import 'package:growtopia_shop/menu.dart';
        // menu.dart merupakan package yang berisikan tampilan yang ingin ditampilkan pada aplikasi
   
   </li>
   <li>Membuat widget <b>ShopItem</b> pada <b>MyHomePage</b><br>

        ShopItem("Lihat Item", Icons.checklist, const Color.fromARGB(233, 230, 166, 198)),
        ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(233, 215, 210, 213)),
        ShopItem("Logout", Icons.logout, const Color.fromARGB(233, 54, 10, 32)),

   </li>
   <li>Pada class <b>ShopCard</b> menambahkan potongan kode</li><br>

    class ShopCard extends StatelessWidget {
       final ShopItem item;

       const ShopCard(this.item, {super.key}); // Constructor

       @override
       Widget build(BuildContext context) {
            return Material(
            color: item.color,
            child: InkWell(
                // Area responsive terhadap sentuhan
                onTap: () {
                // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                    }
                )
            )
       }

   </ol>
</details>


<details>
<summary>Tugas 8</summary>
<ol>
<li>Secara definisi, `Navigator.push()` merupakan method yang berguna untuk menambahkan halaman baru ke dalam tumpukan (stack) halaman yang akan ditampilkan. Sedangkan, 'Navigator.pushReplacement()' merupakan method yang berguna untuk menggantikan halaman yang ada pada tumpukan (stack) sekarang dengan halaman yang baru.</li>

<li>
<ul>
<li><b>Container</b>, layout widget yang berguna untuk mengelompokkan beberapa widget ke dalam satu kotak. Pengunaannya: mengatur margin, padding, dan atribut lainnya pada widget lain</li>
<li><b>Row dan Column</b>, layout widget yang berguna untuk mengatur penyususan widget dalam bentuk baris ataupun kolom. Penggunaannya: mengatur penyusunan teks, gambar, ataupun widget lainnya</li>
<li><b>GridView</b>, [Deskripsi]</li>
<li><b>Card</b>, [Deskripsi]</li>
</ul>
</li>
<li>Input form yang digunakan pada tugas saya adalah 'TextFormField' yang mana berguna untuk menerima input berupa teks. Alasan menggunakan input form ini adalah karena memang yang dibutuhkan hanyalah jenis input form ini. Untuk input form lainnya, masih belum dibutuhkan karena informasi pada data yang akan dibuat masihlah sangat sederhana</li>
<li>Penerapan clean architecture pada Flutter, menerapkan konsep pemisahan antar lapisan. Lapisan itu sendiri terbagi menjadi 3 layers, yaitu Presentation, Business, dan Data

<ul>
<li>
<b>Presentation</b>, terdiri dari beberapa bagian, yaitu Provider (sebagai perantara/penghubung dari datasource ke page), Pages (halaman yang akan ditampilkan kepada user), dan Widget (komponen-komponen yang terdapat dalam suatu page)
</li>

<li><b>Business</b>, terdiri dari beberapa bagian, yaitu Repositories, Entities, dan Usecases</li>

<li><b>Data</b>, terdiri dari beberapa bagian, yaitu Repositories, Models, dan Data sources.</li>
</ul>
</li>

<li><b>Cara mengimplementasikan checklist:</b>
<ul>
<li>Membuat file baru dengan nama '</li>
</ul>


</li>
</ol>

</details>