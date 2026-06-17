<?php
class Database {
    // ==========================================
    // PROPERTI KREDENSIAL DATABASE
    // ==========================================
    private $host = "localhost";
    private $db_name = "db_simulasi_pbo_ti1c_nafisrizqiramadhan"; 
    private $username = "root";              // Default bawaan XAMPP
    private $password = "";                  // Default bawaan XAMPP (kosong)
    public $conn;

    // ==========================================
    // METHOD KONEKSI (ABSTRAKSI)
    // ==========================================
    public function getConnection() {
        $this->conn = null;

        try {
            // Membuat instance PDO baru untuk koneksi
            $dsn = "mysql:host=" . $this->host . ";dbname=" . $this->db_name;
            $this->conn = new PDO($dsn, $this->username, $this->password);
            
            // Konfigurasi PDO Error Mode ke Exception agar error mudah di-debug
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
            // Mengatur encoding karakter ke UTF-8
            $this->conn->exec("set names utf8");
            
        } catch(PDOException $exception) {
            // Menangkap dan menampilkan pesan jika koneksi gagal
            die("Koneksi database gagal: " . $exception->getMessage());
        }

        return $this->conn;
    }
}
?>