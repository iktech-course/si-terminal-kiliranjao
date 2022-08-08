<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Export Keberangkatan Ke Excel</title>
</head>
<body>
    <?php
        header("Content-type: application/vnd-ms-excel");
        header("Content-Disposition: attachment; filename=Data Keberangkatan.xls");
    ?>

    <p>Daftar Keberangkatan Bus Terminal Kiliran Jao</p>
    <table border="1">
        <thead>
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Jam Keberangkatan</th>
                <th>Jumlah Penumpang</th>
                <th>Tujuan keberangkatan</th>
                <th>nopol</th>
                <th>jenis</th>
                <th>nama PO</th>
            </tr>
        </thead>
        <tbody>
            <!--Jangan Dihapus-->
            <?php
                include 'koneksi.php';

                $query = mysqli_query($koneksi,"SELECT * FROM keberangkatan_kendaraan");
                $no = 0;
                while($data = mysqli_fetch_array($query))
                {
                    $no++;
            ?>
            <tr>
                <td><?=$no ?></td>
                <td><?=$data['tanggal'] ?></td>
                <td><?=$data['jam_keberangkatan'] ?></td>
                <td><?=$data['jumlah_penumpang'] ?></td>
                <td><?=$data['tujuan_keberangkatan'] ?></td>
                <td><?=$data['no_polisi'] ?></td>
                <td><?=$data['jenis'] ?></td>
                <td><?=$data['nama_po'] ?></td>
            </tr>
            <?php
                }
            ?>                                   
        </tbody>    
    </table>
</body>
</html>