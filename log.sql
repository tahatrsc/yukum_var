
CREATE TABLE Sistem_Loglarý (
    log_id INT  PRIMARY KEY,     
    kullanici_id INT, -- Ýþlemi yapan kullanýcý ID'si
    islem VARCHAR(255) NOT NULL,-- Gerçekleþtirilen iþlem (örneðin "giriþ yaptý", "yük ekledi")
    FOREIGN KEY (kullanici_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE  -- Kullanýcý ile iliþkilendirme
);