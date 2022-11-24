import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyFormPage());
}

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

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judulBudget = "";
  int _nominalBudget = 0;
  String _jenisBudget = "";
  List<String> listJenisBudget = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Beli Sate Pacil",
                      labelText: "Judul",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.task),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judulBudget = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judulBudget = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: null,
                    hint: Text(_jenisBudget == '' ? 'Pilih jenis' : _jenisBudget),
                    items: listJenisBudget.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _jenisBudget = newValue!;
                      });
                    },
                  ),
                ),
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
                            ),
                            ]),
                        );
                      },
                    );
                  }
                },
                child: const Text("Simpan", style: TextStyle(color: Colors.white),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}