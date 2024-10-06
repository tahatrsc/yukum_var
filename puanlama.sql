
create table puanlama(

puan_id int primary key,
kargo_id int,
sofor_id int,
satici_id int,
puan int not null,
geri_bildirim text,
kayit_tarih DATETIME2 DEFAULT SYSDATETIME(),
FOREIGN KEY (kargo_id) REFERENCES yuk(yuk_id) ON DELETE NO ACTION,  -- Yük ile iliþkilendirme
FOREIGN KEY (sofor_id) REFERENCES kullanicilar(kullanici_id) ON DELETE NO ACTION,  -- Þoför ile iliþkilendirme
FOREIGN KEY (satici_id) REFERENCES kullanicilar(kullanici_id) ON DELETE NO ACTION -- Müþteri ile iliþkilendirme





);