# 🎲 Let's Make a Deal (Monty Hall Problem) in MATLAB

Implementasi game klasik **Monty Hall Problem** menggunakan MATLAB. 

Misalkan Anda berada di sebuah acara permainan, dan Anda diberikan pilihan tiga pintu: Di belakang salah satu pintu ada mobil; di belakang pintu lainnya, ada kambing. Anda memilih sebuah pintu, katakanlah Pintu No. 1, dan penyelenggara, yang tahu apa yang ada di balik pintu-pintu itu, membuka pintu lain, katakanlah Pintu No. 3, yang berisi kambing. Dia kemudian berkata kepada Anda, "Apakah Anda ingin memilih Pintu No. 2?" Apakah menguntungkan bagi Anda untuk mengganti pilihan Anda?

Program utama dari game ini mensimulasikan perbedaan probabilitas menang antara **tetap dengan pilihan awal (stay)** dan **berpindah ke pintu lain (switch)**.

---

## 📂 File yang tersedia
1. **`by_user.m`**  
   - Mode interaktif untuk manusia melawan bot.  
   - Alur program:  
     - User memilih pintu.  
     - Bot membuka pintu kosong.  
     - User memilih untuk **stay (0)** atau **switch (1)**.  
     - Bot menampilkan hasil (menang atau zonk).

2. **`by_bot_3.m`**  
   - Mode simulasi otomatis dengan **3 pintu**.  
   - User memasukkan jumlah percobaan (case).  
   - Program menampilkan peluang menang jika **stay** dan jika **switch**.

3. **`by_bot_N.m`**  
   - Mode simulasi otomatis dengan **N pintu (jumlah pintu bebas)**.  
   - User memasukkan jumlah pintu dan jumlah percobaan (case).  
   - Program menampilkan peluang menang jika **stay** dan jika **switch**.

---

## 🚀 Cara Menjalankan
1. Buka **MATLAB**.
2. Pilih salah satu file (`by_user.m`, `by_bot_3.m`, atau `by_bot_N.m`).
3. Klik **Run** 

---
