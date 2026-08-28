# Starter Prompts

> Kumpulan prompt yang siap dipakai siswa untuk memulai sesi belajar.
> Setiap prompt didesain untuk memicu diskusi, bukan instant code.

## Untuk Pemula (Belum Pernah Coding)

### 1. Game Sederhana

```
Aku pengen bikin game ular klasik (snake). Tapi sebelum kamu kasih clue:
- List dulu 5 komponen utama game ini menurut kamu
- Dari 5 itu, mana yang paling susah kamu pikirin?
- Coba deskripsiin "cek tabrakan" pakai bahasa kamu sendiri
```

### 2. Website Pribadi

```
Aku pengen bikin website tentang diri aku. Tapi sebelum mulai:
- Website itu isinya apa aja sih? List 5 section yang harus ada
- Mana yang paling penting? Kenapa?
- Kalau cuma bisa pilih 1 section, kamu pilih yang mana?
```

### 3. Kalkulator

```
Aku mau bikin kalkulator sederhana. Sebelum kode:
- Operasi apa aja yang harus ada?
- Kalau user pencet "=" tapi input kosong, apa yang harus terjadi?
- Coba tulis alur programnya pakai pseudocode (bahasa manusia)
```

## Untuk Intermediate (Sudah Bisa Basic)

### 4. To-Do List App

```
Aku udah bisa basic JS. Mau bikin to-do list app.
Tapi sebelum mulai, jawab dulu:
- Data di mana? localStorage? database?
- Butuh login ga? Atau cukup simpan di browser?
- Target device: HP atau laptop?
Coba jawab 3 itu, baru kita diskusikan stack-nya.
```

### 5. Bug Hunter

```
Aku punya kode yang bug-nya ga ketemu-ketemu.
[kirim kode]
Tapi sebelum aku review:
- Kamu udah coba jalanin? Error message-nya apa?
- Kamu curiga bug-nya di mana? Kenapa?
- Kalau kamu jadi code reviewer, apa yang akan kamu kritik?
```

### 6. Refactor Challenge

```
Aku punya kode yang jalan tapi berantakan.
[kirim kode]
Tantangan: refactor supaya lebih clean.
Aturan:
- Jangan tambah fitur baru
- Jangan ubah behavior
- Kamu yang nulis, aku review hasilnya
- Clue boleh, full code jangan
```

## Untuk Advanced (Sudah Paham Fundamental)

### 7. Arsitektur Battle

```
Aku mau bikin [project]. Stack yang aku pilih: [stack].
Tantangan kamu:
- Kenapa pilih itu? Alasan konkret, bukan "karena tren"
- Trade-off terbesar apa?
- Kalau 2 tahun lagi scale 10x, masih oke ga?
- Alternative apa yang kamu consider?
Debat sehat yok.
```

### 8. Code Review Battle

```
Aku mau nulis [fitur]. Tapi sebelum mulai, kamu review dulu requirement-ku:
[requirement]
Tantangan:
- Ada requirement yang ambigu? Tanya balik.
- Ada edge case yang aku lupa? Sebutkan.
- Ada asumsi yang ga realistis? Tantang.
Setelah diskusi, baru kita mulai implementasi.
```

### 9. From Scratch, No AI

```
Aku mau nulis [fitur] 100% manual, ga pake AI.
Kamu cuma boleh jawab "iya" atau "tidak" untuk pertanyaan klarifikasi.
Tujuan: aku mau tau aku bisa ga tanpa AI.
Di akhir, kita bandingin: versi aku vs versi AI. Mana yang lebih bagus?
```

## Refleksi & Wrap-Up Prompts

### 10. Recap Sesi

```
Aku mau review apa yang aku pelajari hari ini.
Tolong pancing aku dengan pertanyaan, jangan langsung kasih ringkasan.
Mulai dari: "Dari semua yang kita kerjain hari ini, mana yang paling berkesan?"
```

### 11. Stuck Tracker

```
Aku masih ngerasa stuck di [topik].
Jangan kasih solusi langsung.
Bantu aku dengan:
- Tanya di mana aku bener-bener bingung (bukan pura-pura)
- Kasih analogi dari hal yang aku udah paham
- Ajari cara mencari jawaban sendiri (bukan kasih jawabannya)
```

### 12. What If Scenarios

```
Aku udah bikin [project]. Sekarang tantang aku dengan "what if":
- What if user input string bukan angka?
- What if database down?
- What if 1000 user akses barengan?
- What if user jahat sengaja input aneh?
Coba bikin minimal 3 skenario yang aku belum pikirin.
```

## Per-Subject Quick Starters

### Web Development

```
Aku mau bikin landing page untuk [produk/event]. 
Sebelum mulai:
- Target audience siapa? (usia, interest)
- Goal utama? (beli, daftar, atau cuma liat?)
- 1 aksi yang paling penting di page itu apa?
Fokus ke 1 goal dulu, jangan over-design.
```

### Python

```
Aku mau bikin script [tujuan]. 
Sebelum nulis kode:
- Input-nya apa? Format gimana?
- Output yang diharapkan gimana?
- Edge case apa yang mungkin terjadi?
Tulis pseudo-code dulu, baru kita implement.
```

### Database

```
Aku mau desain database untuk [sistem]. 
Tantangan:
- Entity utama apa aja? (3-5)
- Relationship-nya gimana? (one-to-many, dll)
- Atribut penting per entity apa?
- Index di kolom mana?
Gambar schema dulu, baru kita query.
```

### Mobile (React Native / Flutter)

```
Aku mau bikin app mobile untuk [tujuan]. 
Sebelum mulai:
- Target user pakai device apa? (Android doang, atau iOS juga)
- Butuh internet? Atau bisa offline?
- Notifikasi perlu? Push notification?
- Storage lokal perlu? Seberapa besar?
Fokus ke MVP dulu, jangan feature creep.
```

## Anti-Pattern Prompts (Yang Harus Dihindari)

❌ **Jangan pakai prompt ini:**

```
"Buatin project [nama project] lengkap dengan [fitur lengkap]"
→ Langsung minta full code. Tidak ada proses belajar.

"Berikan kode [X] yang sempurna"
→ Tidak menantang siswa untuk improve.

"Kerjain PR aku ya, gw males"
→ Menyerahkan proses belajar sepenuhnya ke AI.

"Aku ga ngerti sama sekali, kasih rangkuman"
→ Siswa ga berusaha sama sekali.
```

## Tips untuk Guru

- **Minta siswa share prompt mereka.** Bisa jadi bahan diskusi.
- **Apresiasi proses, bukan hasil.** "Wah kamu stuck 30 menit tapi ga nyerah, keren!"
- **Diskusikan prompt yang sama menghasilkan output beda.** Pelajaran tentang specificity.
- **Bandingkan prompt anak yang熟练 vs pemula.** Inspirasi untuk yang belum lancar.
