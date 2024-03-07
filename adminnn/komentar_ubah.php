<div class="jumbotron bg-primary text-light" style="padding: 20px 0;">
	<div class="container text-center">
		<h2>Komentar produk</h2>
	</div>
</div>

<div class="container">

	<?php 

		$id = $_GET['id'];
		if (isset($_POST['balasan'])) {
			$balasan = $_POST['balasan'];

			$query = mysqli_query($koneksi, "update komentar set balasan='$balasan' where id_komentar=$id");
			if ($query) {
				echo '<script>alert("selamat,data berhasil diubah")</script>';
				echo '<meta http-equiv="refresh" content="0;url=?page=komentar">';
			}else{
				echo '<script>alert("Maaf,data Gagal ditambah")</script>';
			}
		}

		$query = mysqli_query($koneksi, "select*from komentar left join produk on produk.id_produk = komentar.id_produk where id_komentar=$id");
		$data = mysqli_fetch_array($query);
	 ?>

	<form method="post" enctype="multipart/form-data">
		<table class="table table-bordered">

			<tr>
				<td>produk</td>
				<td><?php echo $data['merk']; ?></td>
			</tr>

			<tr>
				<td>Nama</td>
				<td><?php echo $data['nama']; ?></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><?php echo $data['email']; ?></td>
			</tr>

			<tr>
				<td>Komentar</td>
				<td><?php echo $data['komentar']; ?></td>
			</tr>

			<tr>
				<td>Tanggal</td>
				<td><?php echo $data['tanggal'] . ' ' . $data['waktu']; ?></td>
			</tr>

			<tr>
				<td width="180">Balasan</td>
				<td><textarea class="form-control" name="balasan"><?php echo $data['balasan']; ?></textarea></td>
			</tr>

			

			<tr>
				<td></td>
				<td>
					<button type="submit" class="btn btn-success">Simpan</button>

					<button type="submit" class="btn btn-secondary mt-1">Reset</button>
				</td>
			</tr>

		</table>
	</form>
</div>

