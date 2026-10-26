# API LLM tanpa sensor untuk developer Indonesia

> API kompatibel OpenAI untuk developer Indonesia. Jawaban Bahasa Indonesia natural, streaming, tool calling, tanpa paragraf peringatan di setiap jawaban. Base: https://uncensored-llm.sbs/v1

**API:** https://uncensored-llm.sbs/v1
**Situs:** https://uncensored-llm.sbs

Kalau kamu pernah memakai model bahasa untuk menulis soal politik, kesehatan, keamanan ofensif, atau topik apa pun yang dianggap sensitif oleh penyedia asing, kamu tahu hasilnya: penolakan generik, paragraf peringatan menggantikan isi, jawaban setengah. Halaman ini menjelaskan alternatif langsung — API kompatibel OpenAI yang menjawab pertanyaan sebagaimana ditanyakan.

## Kenapa ini penting untuk developer Indonesia

Produk lokal sering butuh model yang menulis Bahasa Indonesia dengan register yang benar, bukan terjemahan kaku dari bahasa Inggris. Lebih menjengkelkan lagi ketika model menolak topik normal — biaya kuliah, pinjaman, kesehatan, atau keamanan siber — karena kebijakan yang dibuat untuk pasar lain. Dengan API ini kamu tetap memakai SDK OpenAI, tetap bisa tool calling, tetap streaming, tapi keputusan soal cakupan produk ada di tangan tim kamu. Satu-satunya batas yang dipertahankan adalah konten ilegal.

## Contoh panggilan

```bash
export UNLLM_KEY="sk-..."
curl https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Jelaskan tanpa bertele-tele bagaimana cara kerja kapitalisasi pasar kripto."}],"stream":true}'
```

```python
# pip install openai
from openai import OpenAI
client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key="sk-...")
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Jelaskan tanpa bertele-tele bagaimana cara kerja kapitalisasi pasar kripto."}],
)
print(r.choices[0].message.content)
```

```javascript
import OpenAI from "openai";
const ai = new OpenAI({ baseURL: "https://uncensored-llm.sbs/v1", apiKey: process.env.UNLLM_KEY });
const r = await ai.chat.completions.create({ model: "uncensored-llm", messages: [{ role: "user", content: "Jelaskan tanpa bertele-tele bagaimana cara kerja kapitalisasi pasar kripto." }] });
console.log(r.choices[0].message.content);
```

## Biasanya dipakai untuk

| Kasus | Alasan |
|---|---|
| Layanan pelanggan | Bot yang menyelesaikan masalah, bukan membacakan kebijakan. |
| Konten lokal | Artikel, skrip, dan email dengan gaya bahasa Indonesia asli. |
| Riset keamanan | Pengujian ofensif dengan izin tertulis dari klien. |
| Fiksi dewasa (18+) | Adegan eksplisit antar orang dewasa, tanpa potong adegan. |

## Latensi dari kota kamu

Latensi ditentukan operator, bukan bendera negara. Ukur dulu dari mesin kamu:

```bash
curl -o /dev/null -s -w '%{time_total}s\n' https://uncensored-llm.sbs/v1/models
```

| Kota | Provinsi |
|---|---|
| Jakarta | DKI Jakarta |
| Bandung | Jawa Barat |
| Surabaya | Jawa Timur |
| Yogyakarta | DI Yogyakarta |
| Semarang | Jawa Tengah |
| Medan | Sumatera Utara |
| Palembang | Sumatera Selatan |
| Makassar | Sulawesi Selatan |
| Denpasar | Bali |
| Balikpapan | Kalimantan Timur |
| Pontianak | Kalimantan Barat |
| Jayapura | Papua |

## Pertanyaan yang benar-benar muncul

### Apakah benar kompatibel dengan OpenAI?

Ya. /v1/chat/completions, /v1/models, dan streaming SSE memakai format event yang sama. SDK resmi jalan hanya dengan mengganti base_url.

### Ada paket gratis atau uji coba?

Ketentuan yang berlaku dipublikasikan di https://uncensored-llm.sbs. Perubahan harga diumumkan di sana, bukan di repo ini.

### Apa yang diblokir?

Konten ilegal, termasuk materi yang melibatkan anak di bawah umur. Jika permintaan tidak masuk ke sana, jawabannya soal permintaan itu.

### Bisa dipakai dengan Open WebUI atau LibreChat?

Bisa. Keduanya menerima base URL OpenAI-compatible, jadi tinggal isi https://uncensored-llm.sbs/v1 dan API key.

### Bagaimana mengamankan API key?

Simpan di environment variable per environment, rotasi berkala, jangan pernah di frontend atau repo publik.

## Dokumentasi ini dalam bahasa lain

- [pt-BR] https://brown1023.github.io/llm-api-sem-censura-brasil/
- [es-419] https://brown1023.github.io/api-llm-sin-censura-latam/
- [vi-VN] https://ryuuless.github.io/uncensored-llm-api-vietnam/
- [tr-TR] https://askcode24.github.io/sansursuz-llm-api-turkiye/
- [de-DE] https://askcode24.github.io/uncensored-llm-api-deutschland/
- [es-ES] https://palazuel0s2004.github.io/api-llm-sin-censura-espana/
- [it-IT] https://palazuel0s2004.github.io/llm-api-senza-censura-italia/
- [en-IN] https://nirav0712.github.io/uncensored-llm-api-india/
- [en-PH] https://nirav0712.github.io/uncensored-llm-api-philippines/
- [ar] https://mohamedabderrehman.github.io/uncensored-llm-api-arabia/
- [ar-EG] https://mohamedabderrehman.github.io/uncensored-llm-api-egypt/

---

uncensored-llm.sbs — API kompatibel OpenAI. Konten ilegal, termasuk materi yang melibatkan anak di bawah umur, diblokir. Sisanya tanggung jawab pemanggil.