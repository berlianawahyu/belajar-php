create database fakultas; 

create table jurusan (
id integer primary key auto_increment,
kode char(4) not null,
nama varchar(50) not null
);

Create table mahasiswa (
id integer primary key auto_increment,
id_jurusan integer not null,
nim char(8) not null,
nama varchar(50) not null, 
jenis_kelamin enum('laki-laki', 'perempuan') not null, 
tempat_lahir varchar(50) not null,
tanggal_lahir date not null,
alamat varchar(255) not null,
foreign key (id_jurusan) refenrences jurusan(id)
);
-- menambahkan data jurusan
 insert into jurusan ( kode, nama) values ("AAAA", "Administrasi publik");
 insert into jurusan ( kode, nama) values ("ABBB", "Sistem Informasi");
-- menambahkan data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
 values (1,'20220001', 'Fulan', 'laki-laki', 'Malang', '2000-12-23', 'Jl. Sukarno 9');
 insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
 values (2,'20220002', 'Berliana', 'perempuan', 'Cilacap', '2000-12-23', 'Jl. Sukarno 10');

--update data
 update jurusan set nama = "Informatika" where id=1;
-- menghapus data
delete from mahasiswa where id=1;