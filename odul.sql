CREATE TABLE odul (
    odul_id INT PRIMARY KEY,  -- Benzersiz ödül ID'si
    sofor_id INT,                             -- Ödül alan şoför ID'si
    acıklama VARCHAR(255) NOT NULL,         -- Ödül açıklaması
    puan INT NOT NULL,                       -- Ödül puanı
    tarih DATETIME2 DEFAULT SYSDATETIME(),  -- Ödülün verildiği zaman
    FOREIGN KEY (sofor_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE  -- Şoför ile ilişkilendirme
);
