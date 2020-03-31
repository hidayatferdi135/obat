<html class="fixed sidebar-left-collapsed">
	<head>  
		<meta charset="UTF-8"> 
		<link rel="shortcut icon" href="<?php echo base_url()?>/assets/images/favicon.png" type="image/ico">   
		<title>PT Airlangga sentral internasional</title>    
		<meta name="author" content="Paber"> 
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/bootstrap-datepicker/css/datepicker3.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>assets/stylesheets/theme.css" /> 
		<link rel="stylesheet" href="<?php echo base_url()?>assets/stylesheets/skins/default.css" /> 
		<link rel="stylesheet" href="<?php echo base_url()?>assets/stylesheets/theme-custom.css"> 
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/pnotify/pnotify.custom.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/isotope/jquery.isotope.css" />
        
		<script src="<?php echo base_url()?>assets/vendor/modernizr/modernizr.js"></script>  
        <style type="text/css" media="print">
            #tabel1{
                width: 280px;
            }
        </style>
	</head>
    <body style="background:white;">
        
    <table class="table table-condensed">
    <tr>
        <?php foreach ($apotik as $key) {?>
        <td width="50%"><h3><b><?=ucwords(strtolower($key['nama_apotek']))?></b></h3>
		</td>
        <?php
        }?>
        <td></td>
        <td style="text-align: right;"><h3> Faktur Penjualan</h3></td>
    </tr>
    <tr>
        <?php foreach ($apoteker as $a): ?>
            <td><small><?=$a['alamat']." | ".$a['telepon']?></small>
            <br><small><?="NPWP: ".$a['no_npwp']?></small></td>
            <td></td>
            <td align="right">
            </td>
        <?php endforeach ?>
    </tr>
    <tr>
        <td>
            <table class="table table-borderless" style=" border: 1px solid black;">
                <tr>
                    <td>No. Dok</td><td>:</td><td><?="SRT/".date('dmy')."/".$penjualan?></td>
                </tr>
                <tr>
                    <td>Tanggal Dok</td><td>:</td><td><?=date('d M Y')?></td>
                </tr>
                <?php
                if($status=="Kredit"){
                    $akr ="(K)";
                }else{
                    $akr ="(C)";
                }
                    ?>
                <tr>
                    <td>T.O.P</td><td>:</td><td><?=$status.$akr.date('d/m/Y')?></td>
                </tr>
                <tr>
                    <td>No. Order/Sales</td><td>:</td><td><?=$penjualan?>/<?= $spg; ?></td>
                </tr>
                <?php if($status=="Kredit"){?>
                        
                    <tr>
                        <td>Jatuh Tempo</td><td>:</td><td><?=$tempo?></td>
                    </tr>
                <?php
                }?>
            </table>
        </td>
        <td><table style="outline: thick solid #AAAAAA;" class="table"> <td align="center">
            <h3><b> PELANGGAN </b></h3></td>
        </table></td>
        <td>
            <table class="table table-borderless" style=" border: 1px solid black;">
                <?php
                foreach ($apoteker as $key) {
                    ?>
				<tr>
                    <td>Kepada</td><td>:</td><td><?=ucwords(strtolower($key['nama_pembeli']))?>
                    </td>
                </tr>
                <tr>
                    <td></td><td></td><td><?=ucwords(strtolower($key['alamat']))?>
                    </td>
                </tr>
                <tr>
                <td>NPWP Pembeli</td><td>:</td><td><?=$key['no_npwp']?>
					</td>
                </tr>
				<?php
					}
				?>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <table class="table table-bordered" style=" border: 1px solid black;">
                <tr>
                    <th>BET/Exp</th>
                    <th>Jumlah</th>
                    <th>Nama Produk</th>
                    <th>Harga/Satuan</th>
                    <th>Diskon</th>
                    <th>Total</th>
                </tr>
            
            <?php
                $ttl1 = 0;
                $ttl2 = 0;
                foreach ($keranjang as $key) {
                    ?>
                <tr>
                    <td><?=$key['no_bet']."/".date('d M Y', strtotime($key['tgl_expired']))?></td>
                    <td><?=$key['kuantiti']?></td>
                    <td><?=$key['nama_item']?></td>
                    <td><?=$key['harga']?></td>
                    <td><?=$key['diskon']?></td>
                    <td align="right"><?=rupiah($key['total'])?></td>
                </tr>

            <?php
                $ttl1 += $key['total'];
                $ttl2 += $key['total'];
                $ppn = $ttl1*10/100;
                $end = $ttl1+$ppn;
            }
            ?>
        </table>
        </td>
    </tr>
    <tr>
        <td>
            <table class="table table-borderless" style=" border: 1px solid black;">
                <tr>
                    <td>Terbilang</td><td>:</td><td><?=terbilang($end)?></td>
                </tr>
            </table>
        </td>
        <td></td>
        <td>
            <table id="tabel1" class="table table-borderless" style=" border: 1px solid black;">
                <tr>
                    <td>Total 1</td><td>:</td><td align="right"><?=rupiah($ttl1)?></td>
                </tr>
                <tr>
                    <td>Ext. Diskon</td><td>:</td><td align="right"><?=rupiah('0')?></td>
                </tr>
                <tr>
                    <td>Total 2</td><td>:</td><td align="right"><?=rupiah($ttl2)?></td>
                </tr>
                <?php if ($kode != 2): ?>
                <tr>
                    <td>PPN</td><td>:</td><td align="right"><?=rupiah($ppn)?></td>
                </tr>
                <?php endif ?>
                <tr>
                    <td>Materai</td><td>:</td><td align="right"><?=rupiah('0')?></td>
                </tr>
                <tr>
                    <td><b> Total Akhir </b></td><td>:</td><td align="right"><?=rupiah($end)?></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <?php foreach ($apotik as $keys) {?>
        <table class="table table-borderless">
            <tr style="margin-bottom:50px;">
                <td align="center">Penerima</td>
                <td align="center">Hormat Kami, <?=ucwords(strtolower($keys['nama_apotek']))?><br><br><br><br></td>
            </tr>
            <tr>
            <?php
                foreach ($apoteker as $key) {
                    ?>
                <td align="center"><?=ucwords(strtolower($key['nama_pembeli']))?></td>    
                <td align="center"><?=ucwords(strtolower($key['apoteker']))?>
                    <br><small><?=$key['no_apoteker']?></small>
                </td>

            </tr>
        </table>
        </tr>
        <?php
            }
        }?>
</table>
</body>