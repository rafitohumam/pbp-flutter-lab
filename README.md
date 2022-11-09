# Assignment - Tugas 7
# APP_NAME: counter_7

## Rafito Humam Abrar - 2106633626
## PBP E

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
        )
      ]), // This trailing comma makes auto-formatting nicer for build methods.
```
Potongan kode di atas dilakukan untuk menambahkan dua buah *floating buttons* yang ditempatkan di ujung kanan-kiri bawah sesuai dengan *layout widgets*. Kedua button tersebut nantinya akan memanggil fungsi yang sudah didefinisikan sebelumnya untuk melakukan *increment* maupun *decrement* dari nilai variabel `_counter`.

Selanjutnya memantau perubahan menggunakan `flutter run`, dan melakukan `git add-commit-push` untuk memasukannnya ke dalam repositori ini.