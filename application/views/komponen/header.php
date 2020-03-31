<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!-- start: header -->

<header class="header">
    <div class="logo-container">
        <a href="<?php echo base_url()?>" class="logo">
            <img src="<?php echo base_url()?>assets/images/<?php echo $this->db->get_where('profil_apotek', array('id' => '1'),1)->row()->logo; ?>" height="35" alt="Logo" />
        </a>
        <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
            <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <div class="header-right">    
    <ul class="notifications">
    <?php if( $this->session->userdata('kategori')==31||$this->session->userdata('kategori')==32){?>
        <!-- <li>
        <a href="<?php echo base_url()?>penjualan/kasir" type="button" class="mb-xs mt-xs mr-xs btn btn-primary"><i class="fa  fa-shopping-cart"></i> Transaksi</a>
        </li>  -->
        <li>
                <button tabindex="-1" data-toggle="dropdown" class="mb-xs mt-xs mr-xs btn btn-primary dropdown-toggle" type="button" aria-expanded="false">
                    Pembeli <span class="caret" style="margin-left: 10px;"></span>
                </button>
                <ul role="menu" class="dropdown-menu pull-right">
                    <li><a id="ppn" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=1">Penjualan +PPN</a></li>
                    <li><a id="noppn" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=2">Penjualan Tanpa PPN</a></li>
                    <li><a id="pre" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=3">Penjualan Prekursor</a></li>
                    <li><a id="oot" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=4">Penjualan OOT</a></li>
                </ul>
            <!-- <div class="dropdown">
                <button class="mb-xs mt-xs mr-xs btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa  fa-shopping-cart"></i> Transaksi
                </button>
                <div class="dropdown-menu" id="dropdown" aria-labelledby="dropdownMenuButton">
                    <form action="<?= base_url() ?>" method="post">
                        <button id="ppn" class="dropdown-item">Penjualan +PPN</button>
                     <button id="noppn" class="dropdown-item">Penjualan Tanpa PPN</button>
                      <button id="pre" class="dropdown-item">Penjualan Prekusor</button>
                       <button id="oot" class="dropdown-item">Penjualan OOT</button>
                    </form>
                    <a id="ppn" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=1">Penjualan +PPN</a>
                    <a id="noppn" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=2">Penjualan Tanpa PPN</a>
                    <a id="pre" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=3">Penjualan Prekursor</a>
                    <a id="oot" class="dropdown-item" href="<?php echo base_url()?>penjualan/kasir?t=4">Penjualan OOT</a>

                </div>
            </div> -->
        </li>
    <?php
    }?>
    </ul>
			
					
        <span class="separator"></span> 
        <div id="userbox" class="userbox">
            <a href="#" data-toggle="dropdown"> 
                <div class="profile-info"  style="min-width:60px;">
                    <span class="name"><?php echo $this->session->userdata('nama_admin');?></span>
                    <span class="role"><?php echo $this->session->userdata('nama_kategori');?></span>
                </div>
                <i class="fa custom-caret"></i>
            </a> 
            <div class="dropdown-menu">
                <ul class="list-unstyled">
                    <li class="divider"></li>
                    <li>
                        <a role="menuitem" tabindex="-1" href="<?php echo base_url()?>password"><i class="fa fa-lock"></i> Ganti Password</a>
                    </li>
                    <li>
                        <a role="menuitem" href="<?php echo base_url()?>dashboard/logout"><i class="fa fa-power-off"></i> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- end: search & user box -->
</header>
<!-- end: header -->
<script>
    $(document).on('click','#dropdown #ppn',function(e) { // tombol paymenttransaksi sg ono ng modal payment
                // e.preventDefault()
                $('#dropdown form').attr('action','<?php echo base_url()?>penjualan/kasir?t='1)
                .submit()
            });
    $(document).on('click','#dropdown #ppn',function(e) { // tombol paymenttransaksi sg ono ng modal payment
                // e.preventDefault()
                $('#dropdown form').attr('action','<?php echo base_url()?>penjualan/kasir?t='1)
                .submit()
            });
    $(document).on('click','#dropdown #ppn',function(e) { // tombol paymenttransaksi sg ono ng modal payment
                // e.preventDefault()
                $('#dropdown form').attr('action','<?php echo base_url()?>penjualan/kasir?t='1)
                .submit()
            });
    $(document).on('click','#dropdown #ppn',function(e) { // tombol paymenttransaksi sg ono ng modal payment
                // e.preventDefault()
                $('#dropdown form').attr('action','<?php echo base_url()?>penjualan/kasir?t='1)
                .submit()
            });
</script>