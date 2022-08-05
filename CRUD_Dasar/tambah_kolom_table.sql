ALTER TABLE mahasiswa
ADD COLUMN gelar_akademik ENUM ('S.Kom', 'S.T', 'S.Pd') DEFAULT 'S.Kom'
AFTER fakultas;
