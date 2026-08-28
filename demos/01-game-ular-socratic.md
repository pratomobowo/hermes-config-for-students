# Demo 1: "Bikin Game Ular dalam 5 Menit"

> Demo pembuka yang paling simpel tapi powerful. Tunjukkan bahwa bikin game itu ga sesulit yang dibayangkan. Tapi tetep dengan aturan: **AI kasih clue, siswa yang nulis**.

## Tujuan

- Tunjukkan bahwa coding itu bisa diakses semua orang
- Demonstrasi Socratic Mentor mode
- Tunjukkan bahwa "5 menit jadi" butuh proses, bukan sulap

## Durasi

- Setup: 5 menit
- Demo: 10 menit
- Diskusi: 10 menit
- Total: 25 menit

## Alat yang Dibutuhkan

- Laptop dengan Hermes terinstall
- Proyektor (kalau kelas besar)
- Browser untuk test hasil

## Script Step-by-Step

### 1. Setup (5 menit sebelum murid datang)

```bash
# Verify Hermes jalan
hermes --version

# Load persona Socratic Mentor
hermes --profile kegiatan --persona socratic-mentor chat
```

Pastikan welcome message muncul:
```
👋 Hai! Aku Hermes, partner belajar kamu hari ini.
```

### 2. Opening Talk (2 menit)

> "Siapa yang pernah bikin game?"
> [Tunggu jawaban]
>
> "Siapa yang pernah mikir, 'gue pengen bisa bikin game tapi ga tau mulai dari mana'?"
> [Tunggu jawaban]
>
> "Hari ini, dalam 10 menit, gw mau buktiin kalian bisa mulai bikin game. Tapi ada 1 aturan: AI ga akan kasih kode langsung. AI akan kasih clue. Kalian yang nulis."
>
> "Deal?"
> [Tunggu jawaban]

### 3. Demo Live (5 menit)

**Mulai dengan prompt yang tepat (di proyektor, semua anak liat):**

```
Lo: "Aku mau bikin game ular klasik. Tapi sebelum kasih clue, 
     kamu deskripsiin dulu: game ular itu komponennya apa aja?"
```

**Hermes jawab (tampil di layar):**

```
Hermes: "Oke, sebelum kita mulai, list 5 komponen utama game ular 
        menurut kamu. Pake bahasa kamu sendiri, ga usa istilah coding."
```

**Lo (di depan kelas):**

```
Lo: "Sip, ayo list. Siapa yang mau jawab? 
     1... 2... 3... 4... 5 komponen."
    
    [Murid menjawab satu per satu]
    - Ular
    - Makanan
    - Dinding / batas
    - Skor
    - Game over
    
    "Bagus. Dari 5 itu, mana yang paling susah kamu pikirin logikanya?"
```

**Dialog lanjutan:**

```
Siswa: "Yang nabrak kayaknya"
Lo: "Kenapa yang nabrak?"

Siswa: "Soalnya harus cek tabrakan terus"
Lo: "'Cek tabrakan terus' - menarik. Coba tulis pseudocode-nya.
     Pake bahasa manusia, ga usa syntax yang bener."
```

### 4. Diskusi Kelas (5 menit)

> "Yang lain, ada ide pseudocode yang beda?"
>
> "Ada yang mau challenge? Kayak 'kok pake if-else? Kenapa ga while?'"
>
> "OK, kita liat versi Hermes:"
>
> [Lo minta Hermes kasih pseudocode]

```
Hermes: "Oke, pseudo-code untuk 'cek tabrakan':
        SETIAP ular bergerak:
          AMBIL posisi kepala ular
          JIKA kepala = posisi makanan:
            TAMBAH panjang ular
            TAMBAH skor
            BUAT makanan baru
          JIKA kepala kena dinding:
            GAME OVER
          JIKA kepala kena badan sendiri:
            GAME OVER
        Itu versi simpel. Ada 1 hal yang aku sengaja ga tulis: 
        gimana caranya 'cek tabrakan' terus-menerus?
        Kamu mau coba jawab?"
```

### 5. Penutup (3 menit)

> "Coba liat, kita udah dapet:
> - 5 komponen game
> - Logic 'cek tabrakan' dalam pseudo-code
> - Diskusi: gimana cara loop terus-menerus
>
> Kalian tadi ga nulis satu baris kode pun. Tapi kalian udah punya:
> - Struktur game
> - Alur program
> - Diskusi trade-off
>
> **Sekarang**, kalau gw suruh AI langsung kasih full code, kalian bisa bikin game dalam 5 menit. Tapi kalian ga belajar apa-apa.
>
> **Dengan diskusi tadi**, kalian belajar cara mikir. Itu skill yang ga bisa di-AI-kan.
>
> Next step: coba implement pake Python atau JavaScript di laptop kalian. Gw ada 1 hint terakhir kalau kalian stuck."

## Catatan Penting untuk Pemateri

1. **Jangan kasih full code** — bahkan kalau anak protes. Ini konsistensi.
2. **Hormati proses** — anak yang diam mikir, jangan buru-buru.
3. **Apresiasi pertanyaan, bukan jawaban** — "Pertanyaan bagus!" lebih sering daripada "Jawaban kamu bener!"
4. **Catat pseudo-code anak** di papan tulis. Ini validasi bahwa mereka bisa mikir.

## FAQ Saat Demo

**Q: "Kak, ga ada yang nulis kode nih, kapan coding-nya?"**
A: "Pseudo-code tadi udah 50% coding. Tinggal translate ke syntax. Cobain di laptop sekarang."

**Q: "AI bisa langsung kasih full code kan, kenapa ribet?"**
A: "Bisa. Tapi kalau AI kasih kode, kalian cuma jadi tukang copy-paste. Kalau kalian yang mikir, kalian jadi creator."

**Q: "Gw males mikir, kasih jawaban aja"**
A: "Aku ngerti. Tapi kalau aku kasih jawaban, kamu ga belajar apa-apa. Aku partner kamu, bukan crutch. Yuk coba dulu, 5 menit aja."

**Q: "Pseudo-code ga masuk rapor"**
A: "Pseudo-code yang bagus itu skill software architect. Coding syntax bisa di-google. Cara mikir ga bisa."

## Variasi

### Variasi A: Demo "Gagal" (Sengaja)

> "Oke, gw mau tunjukin sesuatu. Tanpa mikir dulu, gw minta AI langsung kasih kode."

[Lo prompt: "Bikinin game ular"]

> [Hermes kasih kode yang jalan, tapi penuh bug, ga jelas nama variabelnya, dll]

> "Ini kode jalan. Tapi kamu bisa jelasin ga gimana caranya kerja? Bisa debug ga kalau ada error?"
>
> [Siswa diam]
>
> "Nah. Itu bedanya. Pseudo-code tadi, kalian PAHAM. Kode ini, kalian cuma COMPLY. Pilih mana yang kamu mau?"

### Variasi B: Debug Mode

> "Oke, game-nya udah jadi. Tapi ada bug. Yuk debug bareng."

[Minta Hermes kasih kode game ular dengan 2-3 bug disengaja]

> "Aku kasih 10 menit. Cari bug-nya. Yang ketemu dapet poin."

[Tournament mode: siapa yang paling banyak bug]

## Penutup Sesi

Setelah 25 menit, ajak anak ke langkah selanjutnya:

> "Sekarang giliran kalian. Di laptop, coba implement pseudo-code yang kita diskusian tadi. Pakai Python atau JavaScript, terserah. Stuck? Tanya ke AI dengan mode 'Aku stuck, kasih clue dong'."

[Anak-anak kerja sendiri 30-45 menit]
