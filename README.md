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

<li>Secara definisi,  Navigator.push()  merupakan method yang berguna untuk menambahkan halaman baru ke dalam tumpukan (stack) halaman yang akan ditampilkan. Sedangkan, Navigator.pushReplacement() merupakan method yang berguna untuk menggantikan halaman yang ada pada tumpukan (stack) sekarang dengan halaman yang baru.</li><br>

<li><ul><li><b>Container</b>, layout widget yang berguna untuk mengelompokkan beberapa widget ke dalam satu kotak. Pengunaannya: mengatur margin, padding, dan atribut lainnya pada widget lain</li>
<li><b>Row dan Column</b>, layout widget yang berguna untuk mengatur penyususan widget dalam bentuk baris ataupun kolom. Penggunaannya: mengatur penyusunan teks, gambar, ataupun widget lainnya</li>
<li><b>GridView</b>, [Deskripsi]</li>
<li><b>Card</b>, [Deskripsi]</li>
</ul>
</li><br>

<li>Input form yang digunakan pada tugas saya adalah 'TextFormField' yang mana berguna untuk menerima input berupa teks. Alasan menggunakan input form ini adalah karena memang yang dibutuhkan hanyalah jenis input form ini. Untuk input form lainnya, masih belum dibutuhkan karena informasi pada data yang akan dibuat masihlah sangat sederhana</li><br>

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
<li>Membuat file baru dengan nama growtopia_form.dart</li>
<li>Menambahkan kode ke dalam file tersebut

    class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _price = 0;
    String _description = "";
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Form Tambah Produk',
            ),
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Produk",
                      labelText: "Nama Produk",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Harga",
                      labelText: "Harga",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _price = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Harga tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Harga harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Deskripsi",
                      labelText: "Deskripsi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Nama: $_name'),
                                      Text('Harga: $_price'),
                                      Text('Deskripsi: $_description'),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        _formKey.currentState!.reset();
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      )
      );
    }
}
</li>
<li>Membuat file baru dengan nama left_drawer.dart</li>
<li>Menambahkan kode ke dalam file tersebut

    class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
        child: ListView(
            children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.indigo,
                ),
                child: Column(
                children: [
                    Text(
                    'Shopping List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Catat seluruh keperluan belanjamu di sini!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white, // Set the text color to white
                    ),
                    ),
                ],
                ),
            ),
                ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                        ));
                },
                ),
                ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Produk'),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShopFormPage()));
                            },
                        ),
                    ],
                ),
            );
        }
    }

</li>
</ul>


</li>
</ol>

</details>


<details>
<summary>Tugas 9</summary>

<ol>
<li>Ya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, ada beberapa hal yang dapat perlu menjadi pertimbangan sehingga kita tidak dapat menyimpulkan bahwa hal tersebut lebih baik. Pertimbangannya adalah fleksibilitas dan juga kepastian struktur data.

Tanpa adanya models dalam proyek flutter kita, kita dapat menangani data-data yang ada tanpa perlu menyesuaikan dengan atribut-atribut tertentu seperti yang sudah didefinisikan dalam sebuah models. Akan tetapi, dengan tidak adanya models dalam proyek kita, kita bisa saja menjadi kesulitan dalam membaca dan mengelola data kita disebabkan adanya ketidakkonsistenan isi data yang ada.
</li> <br>
<li>
<code>CookieRequest</code> adalah kelas yang berfungsi untuk mengatur HTTP request dan mengelola cookie. Alasan mengapa instance dari <code>CookieRequest</code> perlu dibagikan dalam semua komponen di aplikasi flutter kita adalah agar kita dapat melakukan HTTP request yang sudah terautentikasi(melalui adanya cookie).
</li> <br>
<li>
<ul>
<li>Membuat request HTTP GET ke URL yang dituju. Pada tugas ini, kita melakukan method GET pada URL proyek Django kita</li>
<li>Django memberikan response dankita akan menerima data dalam bentuk JSON, lalu pada aplikasi flutter kita, kita akan melakukan decode</li>
<li>Data yang kita terima akan diubah menjadi dalam bentuk sebuah Models</li>
</ul>
</li> <br>
<li>
Tahapan dalam proses autentikasi data user yang mengakses:
<ul>
<li>User memasukkan data yang dibutuhkan yaitu username dan juga password</li>
<li>Dalam file <code>login.dart</code>, terdapat sintaks yang akan memberikan/mengeluarkan HTTP request yang akan dikirimkan ke proyek Django kita yang sudah terintegrasi melalui endpoint /login</li>
<li>Pada proyek Django kita, request akan diterima dan akan dikelola/dicek. Kemudian, proyek Django kita akan memberikan response yang sesuai dengan hasil pengecekan request kita sebelumnya</li>
</ul>
</li> <br>
<li>
Widget yang digunakan dalam tugas 9 ini
<ul>
<li><b>Elevated Button</b>, berguna untuk membuat sebuah tombol</li>
<li><b>TextField</b>, berguna untuk menerima input berupa teks dari user</li>
<li><b>Navigator</b>, berguna untuk mengatur rute halaman pada aplikasi kita</li>
<li><b>Provider</b>, berguna untuk memberikan semua widget akses terhadap objek yang sama (ex: cookie request)</li>
<li><b>Drawer</b>, berguna untuk membuat sebuah drawer pada halaman utama aplikasi kita</li>
<li></li>
<li></li>
</ul>
</li>




</ol>

<ul> <br>
<b>Implementasi checklist tugas 9</b>
<li>Memastikan deployment proyek Django sebelumnya sudah berfungsi dengan baik disusul dengan beberapa perubahan yang berguna untuk mengintegrasikan proyek Django kita dengan aplikasi flutter kita</li>
<li>Membuat app baru bernama <b>authentication</b> dan menambahkannya ke dalam <b>INSTALLED_APPS</b> yang ada pada file <code>settings.py</code> yang ada pada direktori proyek Django kita</li>
<li>Menginstall beberapa depedencies yang dibutuhkan dan mengatur beberapa konfigurasi pada file <code>settings.py</code></li>
<li>membuat file baru pada direktori <b>lib</b> dengan nama file <b>login.dart</b>. Pada file ini, aplikasi kita akan menampilkan halaman untuk login</li>
<li>Menambahkan beberapa method baru pada direktori <b>authentication</b> dalam file <code>views.py</code>


    @csrf_exempt
    def login(request):
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                auth_login(request, user)
                # Status login sukses.
                return JsonResponse({
                    "username": user.username,
                    "status": True,
                    "message": "Login sukses!"
                    # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                }, status=200)
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Login gagal, akun dinonaktifkan."
                }, status=401)

        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, periksa kembali email atau kata sandi."
            }, status=401)

    @csrf_exempt
    def logout(request):
        username = request.user.username

        try:
            auth_logout(request)
            return JsonResponse({
                "username": username,
                "status": True,
                "message": "Logout berhasil!"
            }, status=200)
        except:
            return JsonResponse({
            "status": False,
            "message": "Logout gagal."
            }, status=401)

</li>
<li>Mengambil data JSON pada proyek Django kita dengan tujuan menjadikannya sebagai sampel yang akan kita copy ke <b>QuickType</b>. Web ini akan meng-convert data JSON kita menjadi sebuah bentuk models yang dapat dipakai dalam proyek flutter-dart. Sebagai contoh:

    class Product {
        String model;
        int pk;
        Fields fields;

        Product({
            required this.model,
            required this.pk,
            required this.fields,
        });

        factory Product.fromJson(Map<String, dynamic> json) => Product(
            model: json["model"],
            pk: json["pk"],
            fields: Fields.fromJson(json["fields"]),
        );

        Map<String, dynamic> toJson() => {
            "model": model,
            "pk": pk,
            "fields": fields.toJson(),
        };
    }

    class Fields {
        int user;
        String name;
        DateTime dateAdded;
        int price;
        int amount;
        String description;

        Fields({
            required this.user,
            required this.name,
            required this.dateAdded,
            required this.price,
            required this.amount,
            required this.description,
        });
    }

</li>
<li>Membuat halaman untuk menampilkan seluruh item yang ada pada semua User

    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:growtopia_shop/models/product.dart';
    import 'package:growtopia_shop/widgets/left_drawer.dart';

    class ProductPage extends StatefulWidget {
        const ProductPage({Key? key}) : super(key: key);

        @override
        _ProductPageState createState() => _ProductPageState();
    }

    class _ProductPageState extends State<ProductPage> {
    Future<List<Product>> fetchProduct() async {
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        var url = Uri.parse(
            'https://fernando-valentino-tugas.pbp.cs.ui.ac.id/json/');
        var response = await http.get(
            url,
            headers: {"Content-Type": "application/json"},
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object Product
        List<Product> list_product = [];
        for (var d in data) {
            if (d != null) {
                list_product.add(Product.fromJson(d));
            }
        }
        return list_product;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
            title: const Text('Product'),
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                future: fetchProduct(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData) {
                        return const Column(
                            children: [
                            Text(
                                "Tidak ada data produk.",
                                style:
                                    TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            ],
                        );
                    } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                        "${snapshot.data![index].fields.name}",
                                        style: const TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.price}"),
                                        const SizedBox(height: 10),
                                        Text(
                                            "${snapshot.data![index].fields.description}")
                                    ],
                                    ),
                                ));
                        }
                    }
          }));
        }
    }
</li>
</ul>

</details>