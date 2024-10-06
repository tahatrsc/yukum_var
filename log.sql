
CREATE TABLE Sistem_Loglar� (
    log_id INT  PRIMARY KEY,     
    kullanici_id INT, -- ��lemi yapan kullan�c� ID'si
    islem VARCHAR(255) NOT NULL,-- Ger�ekle�tirilen i�lem (�rne�in "giri� yapt�", "y�k ekledi")
    FOREIGN KEY (kullanici_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE  -- Kullan�c� ile ili�kilendirme
);