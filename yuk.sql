
create table yuk(
yuk_id int primary key,
satici_id int unique,
aciklama text not null,
agirlik decimal (10,2) not null,
alma_konumu varchar(255) not null,
teslimat_konumu varchar(255) not null,
durum NVARCHAR(50) DEFAULT 'Bekliyor',
CONSTRAINT durum1 CHECK (durum IN ('Bekliyor', 'Ta��n�yor', 'Teslim Edildi')),
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken otomatik tarih
g�ncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken ba�lang��ta mevcut tarih
FOREIGN KEY (satici_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE -- M��teri ile ili�kilendirme

);