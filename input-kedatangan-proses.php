<?php
    include('koneksi.php');

    $tanggal = $_POST['tanggal'];
    $jam_kedatangan = $_POST['jam_kedatangan'];
    $jumlah_penumpang = $_POST['jumlah_penumpang'];
    $tujuan_asal = $_POST['tujuan_asal'];
    $no_polisi = $_POST['no_polisi'];
    $jenis = $_POST['jenis_kendaraan'];
    $nama_po = $_POST['nama_po'];

    $query = mysqli_query($koneksi, "INSERT INTO kedatangan_kendaraan SET 
        tanggal = '$tanggal',
        jam_kedatangan = '$jam_kedatangan',
        jumlah_penumpang = '$jumlah_penumpang',
        tujuan_asal = '$tujuan_asal',
        no_polisi = '$no_polisi',
        jenis = '$jenis',
        nama_po = '$nama_po'
    ");

    if($query)
    {
        echo "Data Berhasil Disimpan";
		echo "<meta http-equiv='refresh' content='2; url=data-kedatangan.php'>";
    }
    else
    {
        echo "Data Gagal Tersimpan <br>";
		echo mysqli_error($koneksi);
    }
?>