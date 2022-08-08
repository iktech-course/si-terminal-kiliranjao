<?php
    include('koneksi.php');
    $query = mysqli_query($koneksi, "DELETE FROM kedatangan_kendaraan WHERE id = '$_GET[id]'");

    if($query)
    {
        echo "Data Berhasil Di Hapus";
        echo "<meta http-equiv='refresh' content = '2; url=data-kedatangan.php'>";
    }
    else
    {
        echo "Data Gagal Terhapus";
    }
?>