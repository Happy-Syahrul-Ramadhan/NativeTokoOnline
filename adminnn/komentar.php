<div class="jumbotron bg-primary text-light" style="padding: 20px 0;">
	<div class="container text-center">
		<h2>Komentar produk</h2>
	</div>
</div>

<div class="container">
	<hr>
	<table class="table	table-bordered table-striped table-responsive">
		<tr>
			<th>Produk</th>
			<th>Nama</th>
			<th>Email</th>
			<th>Komentar</th>
			<th>Tanggal</th>
			<th>Balasan</th>
			<th>Aksi</th>
		</tr>

		<?php 
			$query = mysqli_query($koneksi, "select*from komentar left join produk on produk.id_produk = komentar.id_produk");
			while ($data = mysqli_fetch_array($query)) {

		 ?>

		 <tr>
		 	<td><?php echo $data['merk']; ?></td>
		 	<td><?php echo $data['nama']; ?></td>
		 	<td><?php echo $data['email']; ?></td>
		 	<td><?php echo $data['komentar']; ?></td>
		 	<td><?php echo $data['tanggal'] . ' ' . $data['waktu']; ?></td>
		 	<td><?php echo $data['balasan']; ?></td>
		 	<td>
		 		<a class="btn btn-primary" href="?page=komentar_ubah&&id=<?php echo $data['id_komentar']; ?>">balasa</a>

		 		<a  class="btn btn-danger mt-1" href="?page=komentar_hapus&&id=<?php echo $data['id_komentar']; ?>">Hapus</a>
		 	</td>
		 </tr>

		 <?php 
		}
		  ?>
	</table>
</div>
