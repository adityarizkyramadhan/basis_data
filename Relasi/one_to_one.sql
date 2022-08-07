-- make relation one to one beetwen table mahasiswa and mahasiswa_detail
--

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nama TEXT NOT NULL,
    nim TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    jurusan TEXT NOT NULL,
    fakultas TEXT NOT NULL,
    is_active BOOLEAN DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);
CREATE TABLE mahasiswa_nilai (
    id INT AUTO_INCREMENT,
    nilai INT NOT NULL,
    mahasiswa_id INT NOT NULL,
    mata_kuliah TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (mahasiswa_id) REFERENCES mahasiswa(id)
);

INSERT INTO mahasiswa(nama, nim, email, jurusan, fakultas)
VALUES ('Aditya Rizky', '123456789', 'aditya@gmail.com', 'TIF', 'FILKOM');

INSERT INTO mahasiswa_nilai(nilai, mahasiswa_id, mata_kuliah)
VALUES (100, 1, 'Algoritma dan Struktur Data');

-- read mahasiswa and mahasiswa_nilai
SELECT * FROM mahasiswa LEFT JOIN mahasiswa_nilai ON mahasiswa.id = mahasiswa_nilai.mahasiswa_id;

-- 127.0.0.1/playground_database/mahasiswa/		http://localhost/phpmyadmin/index.php?route=/table/sql&db=playground_database&table=mahasiswa

--    Menampilkan baris 0 -  1 (total 2, Pencarian dilakukan dalam 0,0008 detik.)


-- SELECT * FROM mahasiswa LEFT JOIN mahasiswa_nilai ON mahasiswa.id = mahasiswa_nilai.mahasiswa_id;


-- id	nama	nim	email	jurusan	fakultas	is_active	created_at	updated_at	id	nilai	mahasiswa_id	mata_kuliah	created_at	updated_at
-- 1	Aditya Rizky	123456789	aditya@gmail.com	TIF	FILKOM	1	2022-08-07 16:30:15	2022-08-07 16:30:15	1	100	1	Algoritma dan Struktur Data	2022-08-07 16:32:57	2022-08-07 16:32:57
-- 1	Aditya Rizky	123456789	aditya@gmail.com	TIF	FILKOM	1	2022-08-07 16:30:15	2022-08-07 16:30:15	2	90	1	Pemrograman Website	2022-08-07 16:34:09	2022-08-07 16:34:09
