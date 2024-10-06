

create table araclar (

arac_id int primary key,
sofor_id int unique,
arac_turu varchar (25)not null,
plaka varchar (20)not null unique,
dorse_turu varchar (25),
kapasite decimal(10,2)not null,
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayıt oluşturulurken otomatik tarih
güncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kayıt oluşturulurken başlangıçta mevcut tarih
FOREIGN KEY (driver_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE  -- Şoför ile ilişkilendirme


);
