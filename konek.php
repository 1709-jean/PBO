<?php
	spl_autoload_register(
	    function ($kelas) {
	        require_once $_SERVER["DOCUMENT_ROOT"] . "/PBW/Git/$kelas.php";
	    }
	);
	$sql = "SELECT nim, nama, tgl_lahir, gender, alamat, kota FROM mahasiswa0352 ORDER BY nim";
	$mhs = new Paginasi($sql, 10);
	$mhs->show_sql(2); //<-- hanya halaman 2 (Belum bisa pindah halaman)
