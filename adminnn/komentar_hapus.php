<?php 
	$id = $_GET['id'];
	$query = mysqli_query($koneksi, "delete from komentar where id_komentar=$id");
	echo '<script>alert("Hapus Data komentar Berhasil")</script>';
	echo '<meta http-equiv="refresh" content="0;url=?page=komentar">';
 ?>
