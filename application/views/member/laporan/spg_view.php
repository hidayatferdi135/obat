<table class="table table-bordered table-striped table-condensed mb-none">
    <thead>
        <tr>
            <th>Nomor Transaksi</th>
            <th>Tanggal Transaksi</th>
            <th>Nama SPG</th> 
            <th>Kontak SPG</th> 
            <th>Nama Barang</th> 
            <th>Jumlah</th> 
            <th>Komisi/Barang</th> 
            <th class="text-right">Total Komisi</th>
        </tr>
    </thead>
    <tbody> 
<?php 
$total = 0;
if (empty($posts)) {
    echo '<td colspan="8" align="center">Data Bulan Ini Kosong</td>';
}else{
foreach($posts as $post): ?> 
<tr>
    <td><?php echo $post['id_penjualan']; ?></td>
    <td><?php echo tgl_indo($post['tgl_transaksi']); ?></td>
    <td><?php echo $post['nama_spg']; ?></td>
    <td><?php echo $post['kontak']; ?></td> 
    <td><?php echo $post['nama_item']; ?></td>
    <td><?php echo $post['jumlah']; ?></td> 
    <td><?php echo $post['komisi']; ?></td>
    <td class="text-right"><?php echo rupiah($post['total']); ?></td>
</tr> 
    <?php 
        $total += $post['total'];
    ?>
<?php endforeach;
        }
?>  
<tr>
    <td colspan="6"></td>
    <td><b>Total</b></td>
    <td class="text-right"><b> <?=rupiah($total)?></b></td>
</tr>
</tbody>
</table>
<ul class="pagination">
<?php echo $this->ajax_pagination->create_links(); ?>
</ul> 