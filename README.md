## Rafito Humam Abrar - 2106633626
## PBP E

# APP_NAME: counter_7
# Assignment - Tugas 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

### Stateless Widget
*Stateless Widget* merupakan sebuah widget bersifat statis yang tidak akan berubah pada *run-time*, contohnya adalah *Icon*, *IconButton*, dan *Text*.

### Stateful Widget
Berbeda dengan *stateless widget*,
*Stateful Widget* merupakan widget yang bersifat dinamis. Widget ini dapat merubah penampilannya sesuai dengan respon dari *event-event* yang terpicu akibat interaksi user atau bahkan adanya data baru yang ter-*update*.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Dalam proyek flutter, hampir semua mekanisme dari UI pada aplikasi tersebut merupakan sebuah widget. Beberapa diantaranya adalah:

1. `Appbar`, sebuah widget yang menjadi *head navbar* untuk aplikasi tersebut.
2. `Text`, sebuah widget yang digunakan untuk menampilkan tulisan. Aplikasi ini menggunakan widget tersebut untuk menampilkan tulisan GANJIL, GENAP, dan counter.
3. `Center, Row, Container, Align`, merupakan kumpulan *layout widgets* yang digunakan untuk mengatur *alignment* dari *widget-widget* yang ditampilkan di UI.
4. `FloatingActionButton`, sebuah widget button yang bersifat *floating*. Aplikasi ini menggunakan dua buah `FloatingActionButton`, masing-masing untuk menambahkan dan mengurangi value dari counter.

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Widget-widget di proyek flutter memiliki *function* `setState()`, dimana function tersebut berfungsi untuk memberitahu framework flutter bahwa ada yang berubah dalam state tersebut, sehingga program akan melakukan re-running build aplikasi tersebut dan variabel - variabel yang mengalami perubahan akan ter-*update* di UI. variabel yang terdampak pada aplikasi ini adalah `_counter`.

## Jelaskan perbedaan antara const dengan final.

`const` dan `final` merupakan jenis inisiator / *modifier* dari *immutable variable*, artinya *value* dari variabel tersebut sudah tidak bisa dirubah. Namun, perbedaannya adalah *value* dari variabel dengan *modifier* `const` harus  diketahui pada saat *compile-time*. Berbeda dengan `const`, *value* dari variabel dengan modifier `final` diketahui pada saat *run-time*.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Pertama, saya membuat proyek flutter baru dengan *command* `flutter create counter_7`. Setelah semua file proyek telah diinisiasi, maka dilakukan penyuntingan terhadap file `lib/main.dart` di Android Studio. Beberapa *line* yang ditambahkan adalah:

```shell
void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }
```

*Function* ini ditambahkan untuk mengurangi nilai dari variabel `_counter`, yang nantinya fungsi ini akan dipanggil ketika kita melakukan klik di button.

```shell
_counter % 2 == 0
                ? const Text(
              'GENAP',
              style: TextStyle(color: Colors.red),):
            const Text(
                'GANJIL',
                style: TextStyle(color: Colors.blue)),
```

Kumpulan kode ini ditambahkan di dalam lingkup widget *children*, dimana kode ini berfungsi sebagai suatu *conditional statement* yang berfungsi untuk melakukan *printing* tulisan yang berbeda dan warna yang berbeda sesuai dengan nilai ganjil-genap dari *counter*.

```shell
floatingActionButton:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
        alignment: Alignment.bottomLeft,
        margin: const EdgeInsets.only(left: 33),
        child: _counter != 0
            ? FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        )
            : null,
      ),
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        )seven friday
      ]), // This trailing comma makes auto-formatting nicer for build methods.
```
Potongan kode di atas dilakukan untuk menambahkan dua buah *floating buttons* yang ditempatkan di ujung kanan-kiri bawah sesuai dengan *layout widgets*. Kedua button tersebut nantinya akan memanggil fungsi yang sudah didefinisikan sebelumnya untuk melakukan *increment* maupun *decrement* dari nilai variabel `_counter`.

Selanjutnya memantau perubahan menggunakan `flutter run`, dan melakukan `git add-commit-push` untuk memasukannnya ke dalam repositori ini.

# Assignment - Tugas 8

## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`

`Navigator` merupakan sebuah method untuk melakukan navigasi antar aplikasi, dan pada tugas ini digunakan kebanyakan pada *appbar drawer* untuk melakukan navigasi antar halaman aplikasi, yaitu `main.dart`, `form.dart`, dan `data.dart`.

### `Navigator.push` 
Merupakan sebuah method untuk melakukan routing dengan menambahkan (*push*) halaman ke sebuah stack, sehingga halaman yang baru akan dimunculkan di posisi teratas stack.
### `Navigator.pushReplacement` 
Merupakan sebuah method untuk melakukan routing dengan menambahkan (*push*) halaman ke sebuah stack, namun halaman yang lama akan diganti atau di-*replace* dengan halaman yang baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya

Dalam proyek flutter, hampir semua mekanisme dari UI pada aplikasi tersebut merupakan sebuah widget. Beberapa diantaranya adalah:

1. `Appbar`, sebuah widget yang menjadi *head navbar* untuk aplikasi tersebut.
2. `Text`, sebuah widget yang digunakan untuk menampilkan tulisan. Aplikasi ini menggunakan widget tersebut untuk menampilkan tulisan GANJIL, GENAP, dan counter.
3. `Center, Row, Container, Align`, merupakan kumpulan *layout widgets* yang digunakan untuk mengatur *alignment* dari *widget-widget* yang ditampilkan di UI.
4. `FloatingActionButton`, sebuah widget button yang bersifat *floating*. Aplikasi ini menggunakan dua buah `FloatingActionButton`, masing-masing untuk menambahkan dan mengurangi value dari counter.
5. `ListTile`, sebuah widget untuk menampung element text dalam bentuk baris List,
6. `Icon`, memberikan elemen icon untuk visualisasi form,
7. `DropdownButton`, memberikan sebuah tombol untuk menunjukan pilihan dropdown.
8. `DropdownMenuItem`, berfungsi untuk menampilkan item atau elemen setelah  DropdownButton dipencet.
9. `Form`, berfungsi untuk membuat sebuah form yang mengambil input dari user.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)

Beberapa contoh event yang berada pada flutter adalah sebagai berikut:

1. `onPressed()`
2. `onSaved()`
3. `onTap()`
4. `onChanged()`

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter

Sesuai dengan penjelasan soal nomor 1, `navigator` akan mengambil data-data dari setiap halaman (*routing*) dan akan mengolahnya dalam bentuk *stack*. Kemudian, sesuai dengan *method* `navigator` yang diberikan oleh *user*, maka navigator akan memperlakukan stack sebagaimana sebuah stack bersifat *First In First Out* (FIFO) dan akan mengganti halaman pada aplikasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas

Pertama, saya menggunakan proyek flutter yang digunakan pada tugas sebelumnya, yaitu adalah `counter_7`. Setelah semua file proyek telah diinisiasi, maka dilakukan penyuntingan terhadap file `lib/main.dart` di Android Studio. Beberapa *line* yang ditambahkan adalah:

### `main.dart`
```shell
drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
```

*Drawer* ini ditambahkan untuk menambahkan `navigator` untuk page aplikasi Tambah Budget dan Data Budget dan melakukan routing dengan baik.

### `form.dart`

```shell
var listBudget = [];

class Budget {
  String judulBudget = "";
  int nominalBudget = 0;
  String jenisBudget = "";

  Budget(String judul, int nominal, String jenis){
    judulBudget = judul;
    nominalBudget = nominal;
    jenisBudget = jenis;
  }
}
```

Kode ini ditambahkan untuk menginisiasi sebuah tampungan berupa *class* `Budget` untuk menyimpan properti dari setiap *budget*, seperti judul *budget*, nominal *budget*, dan jenis *budget*. Kemudian, diinisiasi bentuk *list* pada `listBudget`untuk kemudian nantinya ditambahkan sebagai tempat penyimpan properti sebelum dipindahkan ke `cards`.

```shell
Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: 80000",
                      labelText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.money_rounded),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    // Menambahkan behavior saat nominal diketik
                    onChanged: (String? value) {
                      setState(() {
                        if (value == null || value.isEmpty) {
                          _nominalBudget = 0;
                        } else {
                          _nominalBudget = int.parse(value);
                        }
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        if (value == null || value.isEmpty) {
                          _nominalBudget = 0;
                        } else {
                          _nominalBudget = int.parse(value);
                        }
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      if (int.parse(value) == 0) {
                        return 'Nominal tidak boleh nol!';
                      }
                      return null;
                    },
                  ),
                ),
...
TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 15,
                            child: ListView(
                              padding:
                                const EdgeInsets.only(top: 20, bottom: 20),
                              shrinkWrap: true,
                              children: <Widget>[
                                const Center(child: Text('Informasi Data')),
                                const SizedBox(height: 20),
                                Center(
                                  child: Column(
                                    crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Judul : $_judulBudget",
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Nominal : $_nominalBudget",
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Jenis : $_jenisBudget",
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                          ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                Budget budget = Budget(_judulBudget, _nominalBudget, _jenisBudget);
                                listBudget.add(budget);
                              },
                              child: const Text("SUBMIT"),
```

Potongan kode diatas ditambahkan untuk menambahkan sebuah *form input* yang meminta judul dan nominal dari *budget* user yang ingin ditambahkan. Selain itu, widget `TextButton` juga ditambahkan untuk melakukan inisialisasi dari setiap *value* sebelum user melakukan *submit*.

### `data.dart`

```shell
var formData = form.listBudget;

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            for (int i=0; i < formData.length; i++)...[
              Card(
                elevation: 20,
                shadowColor: Colors.blue,
                color: Colors.white,
                child: SizedBox(
                  width: 1000,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            formData[i].judulBudget,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                formData[i].nominalBudget.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                formData[i].jenisBudget,
                                style: const TextStyle(
                                  color: Colors.black,
...
```

Potongan kode diatas ditambahkan untuk melakukan ekstraksi dari *list* `listBudget` untuk kemudian dipresentasikan dalam bentuk *cards*. Kumpulan *cards* ini disimpan di halaman baru yaitu adalah Data Budget.

Selanjutnya memantau perubahan menggunakan `flutter run`, dan melakukan `git add-commit-push` untuk memasukannnya ke dalam repositori ini.

# Assignment - Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, dengan adanya pembuatan model terlebih dahulu maka data yang ingin disajikan dapat tersimpan lebih rapi, terstuktur, dan sesuai dengan setiap jenis data. Hal ini sesuai dengan tujuan *data delivery* dengan format JSON (*Javascript Object Notation*) yang memperbolehkan adanya *interchange data* dengan efisien dan rapih. Sehingga, tidak direkomendasikan untuk mengambil data JSON tanpa membuat model.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya

Beberapa widget yang digunakan di Tugas 9 adalah sebagai berikut:

1. `Appbar`, sebuah widget yang menjadi *head navbar* untuk aplikasi tersebut.
2. `Text`, sebuah widget yang digunakan untuk menampilkan tulisan. Aplikasi ini menggunakan widget tersebut untuk menampilkan tulisan GANJIL, GENAP, dan counter.
3. `Center, Row, Container, Align`, merupakan kumpulan *layout widgets* yang digunakan untuk mengatur *alignment* dari *widget-widget* yang ditampilkan di UI.
4. `FloatingActionButton`, sebuah widget button yang bersifat *floating*. Aplikasi ini menggunakan dua buah `FloatingActionButton`, masing-masing untuk menambahkan dan mengurangi value dari counter.
5. `ListTile`, sebuah widget untuk menampung element text dalam bentuk baris List,
6. `Icon`, memberikan elemen icon untuk visualisasi form,
7. `DropdownButton`, memberikan sebuah tombol untuk menunjukan pilihan dropdown.
8. `DropdownMenuItem`, berfungsi untuk menampilkan item atau elemen setelah  DropdownButton dipencet.
9. `Form`, berfungsi untuk membuat sebuah form yang mengambil input dari user.
10. `CheckBox`, berfungsi sebagai suatu tombol *boolean* yang mengubah status dari *watched* atau belum *watched* pada *watch list* yang diberikan.

##  Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter

1. Pertama, data JSON didapatkan dengan melakukan `fetch` oleh sebuah *method*.
2. Data JSON yang sudah didapatkan di-*decode* atau dikonversi menjadi data yang didaftarkan dalam model.
3. Data yang telah di-*decode* dan dikonversi akan ditampilkan pada aplikasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas