

create table araclar (

arac_id int primary key,
driver_id int unique,
arac_turu varchar (25)not null,
plaka varchar (20)not null unique,
dorse_turu varchar (25),
kapasite decimal(10,2)not null,
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken otomatik tarih
g�ncel_tarih DATETIME2 DEFAULT SYSDATETIME(),	 -- Kay�t olu�turulurken ba�lang��ta mevcut tarih
FOREIGN KEY (driver_id) REFERENCES kullanicilar(kullanici_id) ON DELETE CASCADE  -- �of�r ile ili�kilendirme


);