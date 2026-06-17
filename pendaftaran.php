<?php
require_once 'koneksi/database.php';

abstract class Pendaftaran {
    // ==========================================
    // PROPERTI KONEKSI & TABEL
    // ==========================================
    protected $conn;
    protected $table_name = "tabel_pendaftaran";

    // ==========================================
    // ATRIBUT GLOBAL (TERENKAPSULASI - PROTECTED)
    // ==========================================
    protected $id_pendaftaran;
    protected $nama_calon;
    protected $asal_sekolah;
    protected $nilai_ujian;
    protected $biayaPendaftaranDasar;
    protected $jalur_pendaftaran;

    // ==========================================
    // KONSTRUKTOR
    // ==========================================
    public function __construct($db) {
        $this->conn = $db;
    }

    // ==========================================
    // ENKAPSULASI: SETTER & GETTER
    // ==========================================
    public function setIdPendaftaran($id) { $this->id_pendaftaran = $id; }
    public function getIdPendaftaran() { return $this->id_pendaftaran; }

    public function setNamaCalon($nama) { $this->nama_calon = $nama; }
    public function getNamaCalon() { return $this->nama_calon; }

    public function setAsalSekolah($asal) { $this->asal_sekolah = $asal; }
    public function getAsalSekolah() { return $this->asal_sekolah; }

    public function setNilaiUjian($nilai) { $this->nilai_ujian = $nilai; }
    public function getNilaiUjian() { return $this->nilai_ujian; }

    public function setBiayaPendaftaranDasar($biaya) { $this->biayaPendaftaranDasar = $biaya; }
    public function getBiayaPendaftaranDasar() { return $this->biayaPendaftaranDasar; }

    public function setJalurPendaftaran($jalur) { $this->jalur_pendaftaran = $jalur; }
    public function getJalurPendaftaran() { return $this->jalur_pendaftaran; }

    // ==========================================
    // METHOD ABSTRAK (Tanpa Isi/Body)
    // ==========================================
    
    // Wajib diimplementasikan untuk menyimpan data ke database
    abstract public function simpanData();

    // Wajib diimplementasikan untuk menghitung biaya sesuai logika jalur pendaftaran
    abstract public function hitungTotalBiaya();

    // Wajib diimplementasikan untuk menampilkan informasi spesifik setiap jalur
    abstract public function tampilkanInfoJalur();
}
?>