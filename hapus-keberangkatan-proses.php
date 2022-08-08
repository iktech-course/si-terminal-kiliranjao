<?php
    include('koneksi.php');
    $query = mysqli_query($koneksi, "DELETE FROM keberangkatan_kendaraan WHERE id = '$_GET[id]'");

    if($query)
    {
        echo "Data Berhasil Di Hapus";
        echo "<meta http-equiv='refresh' content = '2; url=data-keberangkatan.php'>";
    }
    else
    {
        echo "Data Gagal Terhapus";
    }
?>