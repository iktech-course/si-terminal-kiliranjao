<?php
    include('koneksi.php');

    $tanggal = $_POST['tanggal'];
    $jam_keberangkatan = $_POST['jam_keberangkatan'];
    $jumlah_penumpang = $_POST['jumlah_penumpang'];
    $tujuan_keberangkatan = $_POST['tujuan_keberangkatan'];
    $no_polisi = $_POST['no_polisi'];
    $jenis = $_POST['jenis_kendaraan'];
    $nama_po = $_POST['nama_po'];

    $query = mysqli_query($koneksi, "INSERT INTO keberangkatan_kendaraan SET 
        tanggal = '$tanggal',
        jam_keberangkatan = '$jam_keberangkatan',
        jumlah_penumpang = '$jumlah_penumpang',
        tujuan_keberangkatan = '$tujuan_keberangkatan',
        no_polisi = '$no_polisi',
        jenis = '$jenis',
        nama_po = '$nama_po'
    ");

    if($query)
    {
        echo "Data Berhasil Disimpan";
		echo "<meta http-equiv='refresh' content='2; url=data-keberangkatan.php'>";
    }
    else
    {
        echo "Data Gagal Tersimpan <br>";
		echo mysqli_error($koneksi);
    }
?>