<?php
    include 'koneksi.php';

    $id = $_POST['id'];
    $nama_lengkap = $_POST['nama_lengkap'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = mysqli_query($koneksi, "UPDATE user SET 
        nama_lengkap = '$nama_lengkap',
        username = '$username',
        password = '$password'
        WHERE id = '$id'
    ");

    if($query)
    {
        echo "Data Berhasil Disimpan";
        echo "<meta http-equiv='refresh' content='2; url=data-user.php'>";
    }
    else
    {
        echo "Data Gagal Tersimpan <br>";
        echo mysqli_error($koneksi);
    }
?>