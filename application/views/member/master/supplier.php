<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!doctype html>
<html class="fixed sidebar-left-collapsed">
	<head>  
		<meta charset="UTF-8"> 
		<link rel="shortcut icon" href="<?php echo base_url()?>/assets/images/favicon.png" type="image/ico">   
		<title>Apotek Mama</title>    
		<meta name="author" content="Paber">   
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/bootstrap-datepicker/css/datepicker3.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/stylesheets/theme.css" />
		<link rel="stylesheet" href="<?php echo base_url()?>/assets/stylesheets/skins/default.css" />
        <link rel="stylesheet" href="<?php echo base_url()?>/assets/stylesheets/theme-custom.css">
		<link rel="stylesheet" href="<?php echo base_url()?>assets/vendor/pnotify/pnotify.custom.css" />

		<!-- Head Libs -->
		<script src="<?php echo base_url()?>/assets/vendor/modernizr/modernizr.js"></script>
	</head>
	<body class="bgbody">
		<section class="body">

			<?php $this->load->view("komponen/header.php") ?>
			<div class="inner-wrapper"> 
				<?php $this->load->view("komponen/sidebar.php") ?>
				<section role="main" class="content-body">
					<header class="page-header">  
						<h2>Master Data Supplier</h2>  
					</header>  
					<!-- start: page -->
                    <section class="panel">
                        <header class="panel-heading">    
                            <div class="row show-grid">
                                <div class="col-md-6" align="left"><h2 class="panel-title">Data Supplier</h2></div>
                                <?php  
                                echo level_user('master','supplier',$this->session->userdata('kategori'),'add') > 0 ? '<div class="col-md-6" align="right"><a class="btn btn-success" href="#"  data-toggle="modal" data-target="#tambahData"><i class="fa fa-plus"></i> Tambah</a></div>':'';
                                ?> 
							</div>
                        </header>
                        <div class="panel-body"> 
                                <table class="table table-bordered table-hover table-striped" id="supplierdata">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Nama Supplier</th>
                                            <th>No Izin Supplier</th>
                                            <th>Telepon</th>
                                            <th>Alamat</th> 
                                            <th>Apoteker</th> 
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table> 
                        </div>
                    </section>
					<!-- end: page -->
				</section>
			</div>
		</section>

		
        <div class="modal fade" id="tambahData" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <section class="panel  panel-primary">
                    <?php echo form_open('master/suppliertambah',' id="FormulirTambah"');?>  
                    <header class="panel-heading">
                        <h2 class="panel-title">Tambah Supplier</h2>
                    </header>
                    <div class="panel-body">
                        <!-- apotek -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama supplier<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_supplier" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor Izin supplier<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_izin" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat Apotek<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat" required></textarea>
                                </div>
                            </div>
                             
                            <div class="form-group telepon">
                                <label class="col-sm-3 control-label">Telepon</label>
                                <div class="col-sm-9">
                                    <input type="text" name="telepon" class="form-control" />
                                </div>
                            </div>  
                            <!-- npwp -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_npwp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_npwp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_npwp" required></textarea>
                                </div>
                            </div>
                            <!-- bank -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama Bank<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="bank" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor Rekening<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="rekening" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Rekening Atas Nama<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="an" class="form-control" required/>
                                </div>
                            </div> 
                            <!-- apoteker -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">No. Ijin Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_apoteker" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group masa_apoteker">
                                <label class="col-sm-3 control-label">Masa Berlaku<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="masa_apoteker" class="form-control tanggal_masa" data-plugin-datepicker required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="apoteker" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat KTP Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_1" required></textarea>
                                </div>
                            </div>
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat Tinggal Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_2" required></textarea>
                                </div>
                            </div>
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Kontak Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="hp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">No SIPA<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_sipa" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group masa_apoteker">
                                <label class="col-sm-3 control-label">Masa Berlaku SIPA<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="tanggal_sipa" class="form-control tanggal_sipa" data-plugin-datepicker required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama TTK yang didelegasikan<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_ttk" class="form-control" required/>
                                </div>
                            </div> 
                    </div>
                    <footer class="panel-footer">
                        <div class="row">
                            <div class="col-md-12 text-right">
                                <button class="btn btn-primary modal-confirm" type="submit" id="submitform">Submit</button>
                                <button class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </footer>
                    </form>
                </section>
                </div>
            </div>
        </div>
         
        <div class="modal fade" id="editData" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <section class="panel  panel-primary">
                    <?php echo form_open('master/supplieredit',' id="FormulirEdit"');?>  
                    <input type="hidden" name="idd" id="idd">
                    <header class="panel-heading">
                        <h2 class="panel-title">Edit Data Supplier</h2>
                    </header>
                    <div class="panel-body">
                            <!-- apotek -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama supplier<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_supplier" id="nama_supplier" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor Izin supplier<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_izin" id="no_izin" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat Apotek<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat" id="alamat" required></textarea>
                                </div>
                            </div>
                             
                            <div class="form-group telepon">
                                <label class="col-sm-3 control-label">Telepon</label>
                                <div class="col-sm-9">
                                    <input type="text" name="telepon" id="telepon" class="form-control" />
                                </div>
                            </div>  
                            <!-- npwp -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_npwp" id="no_npwp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_npwp" id="nama_npwp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat NPWP<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_npwp" id="alamat_npwp" required></textarea>
                                </div>
                            </div>
                            <!-- bank -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama Bank<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="bank" id="bank" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nomor Rekening<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="rekening" id="rekening" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Rekening Atas Nama<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="an" id="an" class="form-control" required/>
                                </div>
                            </div> 
                            <!-- apoteker -->
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">No. Ijin Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_apoteker" id="no_apoteker" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group masa_apoteker">
                                <label class="col-sm-3 control-label">Masa Berlaku<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="masa_apoteker" id="masa_apoteker" class="form-control tanggal_masa" data-plugin-datepicker required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="apoteker" id="apoteker" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat KTP Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_1" id="alamat_1" required></textarea>
                                </div>
                            </div>
                            <div class="form-group alamat">
                                <label class="col-sm-3 control-label">Alamat Tinggal Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <textarea rows="2" class="form-control" name="alamat_2" id="alamat_2" required></textarea>
                                </div>
                            </div>
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Kontak Apoteker<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="hp" id="hp" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">No SIPA<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="no_sipa" id="no_sipa" class="form-control" required/>
                                </div>
                            </div> 
                            <div class="form-group masa_apoteker">
                                <label class="col-sm-3 control-label">Masa Berlaku SIPA<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="tanggal_sipa" id="tanggal_sipa" class="form-control tanggal_sipa" data-plugin-datepicker required/>
                                </div>
                            </div> 
                            <div class="form-group mt-lg nama_supplier">
                                <label class="col-sm-3 control-label">Nama TTK yang didelegasikan<span class="required">*</span></label>
                                <div class="col-sm-9">
                                    <input type="text" name="nama_ttk" id="nama_ttk" class="form-control" required/>
                                </div>
                            </div> 
                    </div>
                    <footer class="panel-footer">
                        <div class="row">
                            <div class="col-md-12 text-right">
                                <button class="btn btn-primary modal-confirm" type="submit" id="submitformEdit">Submit</button>
                                <button class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </footer>
                    </form>
                </section>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modalHapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <section class="panel  panel-danger">
                    <header class="panel-heading">
                        <h2 class="panel-title">Konfirmasi Hapus Data</h2>
                    </header>
                    <div class="panel-body">
                        <div class="modal-wrapper">
                            <div class="modal-icon">
                                <i class="fa fa-question-circle"></i>
                            </div>
                            <div class="modal-text">
                                <h4>Yakin ingin menghapus data ini ?</h4> 
                            </div>
                        </div>
					</div>
                    <footer class="panel-footer"> 
                        <div class="row">
                            <div class="col-md-12 text-right"> 
                                <?php echo form_open('master/supplierhapus',' id="FormulirHapus"');?>  
                                <input type="hidden" name="idd" id="idddelete">
                                <button type="submit" class="btn btn-danger" id="submitformHapus">Delete</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </form>
                            </div>
                        </div>
                    </footer>
                </section>
                </div>
            </div>
        </div> 

        <!-- Vendor -->
		<script src="<?php echo base_url()?>assets/vendor/jquery/jquery.min.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/select2/select2.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		<script src="<?php echo base_url()?>assets/javascripts/theme.js"></script>
		<script src="<?php echo base_url()?>assets/vendor/pnotify/pnotify.custom.js"></script>
		<script src="<?php echo base_url()?>assets/javascripts/theme.init.js"></script> 
		<script type="text/javascript"> 
        $('.tanggal_masa').datepicker({
            format: 'yyyy-mm-dd' 
        });
        $('.tanggal_sipa').datepicker({
            format: 'yyyy-mm-dd' 
        });
        $('.tanggal_sipaedit').datepicker({
            format: 'yyyy-mm-dd' 
        });
            var tablesupplier = $('#supplierdata').DataTable({  
                "serverSide": true, 
                "order": [], 
                "ajax": {
                    "url": "<?php echo base_url()?>master/datasupplier",
                    "type": "GET"
                }, 
                "columnDefs": [
                    { 
                        "targets": [ 0 ], 
                        "orderable": false, 
                    },
                ],  
            }); 
            document.getElementById("FormulirTambah").addEventListener("submit", function (e) {  
			blurForm();       
			$('.help-block').hide();
			$('.form-group').removeClass('has-error');
			document.getElementById("submitform").setAttribute('disabled','disabled');
			$('#submitform').html('Loading ...');
			var form = $('#FormulirTambah')[0];
			var formData = new FormData(form);
			var xhrAjax = $.ajax({
			type 		: 'POST',
			url 		: $(this).attr('action'),
			data 		: formData, 
			processData: false,
			contentType: false,
			cache: false, 
			dataType 	: 'json'
			}).done(function(data) { 
			if ( ! data.success) {		 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    document.getElementById("submitform").removeAttribute('disabled');  
                    $('#submitform').html('Submit');    
                    var objek = Object.keys(data.errors);  
                    for (var key in data.errors) {
                        if (data.errors.hasOwnProperty(key)) { 
                            var msg = '<div class="help-block" for="'+key+'">'+data.errors[key]+'</span>';
                            $('.'+key).addClass('has-error');
                            $('input[name="' + key + '"]').after(msg);  
                            $('textarea[name="' + key + '"]').after(msg);  
                        }
                        if (key == 'fail') {   
                            new PNotify({
                                title: 'Notifikasi',
                                text: data.errors[key],
                                type: 'danger'
                            }); 
                        }
                    }
                } else { 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    PNotify.removeAll(); 
                    tablesupplier.ajax.reload();   
                    document.getElementById("submitform").removeAttribute('disabled'); 
                    $('#tambahData').modal('hide'); 
                    document.getElementById("FormulirTambah").reset();  
                    $('#submitform').html('Submit');   
                    new PNotify({
                        title: 'Notifikasi',
                        text: data.message,
                        type: 'success'
                    });  
                }
                }).fail(function(data) {   
                    new PNotify({
                        title: 'Notifikasi',
                        text: "Request gagal, browser akan direload",
                        type: 'danger'
                    }); 
                    window.setTimeout(function() {  location.reload();}, 2000);
                }); 
                e.preventDefault(); 
            }); 
            
            function edit(elem){
		        var dataId = $(elem).data("id");   
                document.getElementById("idd").setAttribute('value', dataId);
        		$('#editData').modal();        
                $.ajax({
                    type: 'GET',
                    url: '<?php echo base_url()?>master/supplierdetail',
                    data: 'id=' + dataId,
                    dataType 	: 'json',
                    success: function(response) {  
                        $.each(response, function(i, item) { 
                        document.getElementById("nama_supplier").setAttribute('value', item.nama_supplier);
                        document.getElementById("no_izin").setAttribute('value', item.no_izin);
                        document.getElementById("alamat").value = item.alamat;
                        document.getElementById("hp").value = item.hp;
						document.getElementById("no_npwp").value = item.no_npwp;
						document.getElementById("nama_npwp").value = item.nama_npwp;
						document.getElementById("alamat_npwp").value = item.alamat_npwp;
                        document.getElementById("bank").value = item.bank;
                        document.getElementById("rekening").value = item.rekening;
                        document.getElementById("an").value = item.an;
                        document.getElementById("no_apoteker").value = item.no_apoteker;
                        document.getElementById("masa_apoteker").value = item.masa_apoteker;
                        document.getElementById("apoteker").value = item.apoteker;
                        document.getElementById("alamat_1").value = item.alamat_1;
                        document.getElementById("alamat_2").value = item.alamat_2;
                        document.getElementById("telepon").setAttribute('value', item.telepon);
                        document.getElementById("no_sipa").value = item.no_sipa;
                        document.getElementById("tanggal_sipa").value = item.tgl_sipa;
                        document.getElementById("nama_ttk").value = item.nama_ttk;
                        }); 
                    }
                });  
                return false;
            }
            document.getElementById("FormulirEdit").addEventListener("submit", function (e) {  
			blurForm();       
			$('.help-block').hide();
			$('.form-group').removeClass('has-error');
			document.getElementById("submitformEdit").setAttribute('disabled','disabled');
			$('#submitformEdit').html('Loading ...');
			var form = $('#FormulirEdit')[0];
			var formData = new FormData(form);
			var xhrAjax = $.ajax({
			type 		: 'POST',
			url 		: $(this).attr('action'),
			data 		: formData, 
			processData: false,
			contentType: false,
			cache: false, 
			dataType 	: 'json'
			}).done(function(data) { 
			if ( ! data.success) {		 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    document.getElementById("submitformEdit").removeAttribute('disabled');  
                    $('#submitformEdit').html('Submit');    
                    var objek = Object.keys(data.errors);  
                    for (var key in data.errors) {
                        if (data.errors.hasOwnProperty(key)) { 
                            var msg = '<div class="help-block" for="'+key+'">'+data.errors[key]+'</span>';
                            $('.'+key).addClass('has-error');
                            $('input[name="' + key + '"]').after(msg);  
                        }
                        if (key == 'fail') {   
                            new PNotify({
                                title: 'Notifikasi',
                                text: data.errors[key],
                                type: 'danger'
                            }); 
                        }
                    }
                } else { 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    PNotify.removeAll();
                    tablesupplier.ajax.reload();    
                    document.getElementById("submitformEdit").removeAttribute('disabled'); 
                    $('#editData').modal('hide');        
                    document.getElementById("FormulirEdit").reset();    
                    $('#submitformEdit').html('Submit');   
                    new PNotify({
                        title: 'Notifikasi',
                        text: data.message,
                        type: 'success'
                    });
                }
                }).fail(function(data) {    
                    new PNotify({
                        title: 'Notifikasi',
                        text: "Request gagal, browser akan direload",
                        type: 'danger'
                    }); 
                    window.setTimeout(function() {  location.reload();}, 2000);
                }); 
                e.preventDefault(); 
            }); 
            function hapus(elem){ 
		        var dataId = $(elem).data("id");
                document.getElementById("idddelete").setAttribute('value', dataId);
        		$('#modalHapus').modal();        
            }
            document.getElementById("FormulirHapus").addEventListener("submit", function (e) {  
			blurForm();       
			$('.help-block').hide();
			$('.form-group').removeClass('has-error');
			document.getElementById("submitformHapus").setAttribute('disabled','disabled');
			$('#submitformHapus').html('Loading ...');
			var form = $('#FormulirHapus')[0];
			var formData = new FormData(form);
			var xhrAjax = $.ajax({
			type 		: 'POST',
			url 		: $(this).attr('action'),
			data 		: formData, 
			processData: false,
			contentType: false,
			cache: false, 
			dataType 	: 'json'
			}).done(function(data) { 
			if ( ! data.success) {		 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    document.getElementById("submitformHapus").removeAttribute('disabled');  
                    $('#submitformHapus').html('Delete');     
                    var objek = Object.keys(data.errors);  
                    for (var key in data.errors) { 
                        if (key == 'fail') {   
                            new PNotify({
                                title: 'Notifikasi',
                                text: data.errors[key],
                                type: 'danger'
                            }); 
                        }
                    }
                } else { 
                    $('input[name=<?php echo $this->security->get_csrf_token_name();?>]').val(data.token);
                    PNotify.removeAll();   
                    tablesupplier.ajax.reload();
                    document.getElementById("submitformHapus").removeAttribute('disabled'); 
                    $('#modalHapus').modal('hide');        
                    document.getElementById("FormulirHapus").reset();    
                    $('#submitformHapus').html('Delete'); 
                    new PNotify({
                        title: 'Notifikasi',
                        text: data.message,
                        type: 'success'
                    }); 
                }
                }).fail(function(data) {   
                    new PNotify({
                        title: 'Notifikasi',
                        text: "Request gagal, browser akan direload",
                        type: 'danger'
                    }); 
                    window.setTimeout(function() {  location.reload();}, 2000);
                }); 
                e.preventDefault(); 
            }); 
              
        </script>
	</body>
</html>