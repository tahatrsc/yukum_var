
create table yuk(
yuk_id int primary key,
satici_id int unique,
aciklama text not null,
agirlik decimal (10,2) not null,
alma_konumu varchar(255) not null,
teslimat_konumu varchar(255) not null,
durum NVARCHAR(50) DEFAULT 'Bekliyor',
CONSTRAINT durum1 CHECK (durum IN ('Bekliyor', 'Taþýnýyor', 'Teslim Edildi')),
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayýt oluþturulurken otomatik tarih
güncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayýt oluþturulurken baþlangýçta mevcut tarih
FOREIGN KEY (satici_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE -- Müþteri ile iliþkilendirme

);