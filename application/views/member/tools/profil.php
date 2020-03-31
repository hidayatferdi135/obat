<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!doctype html>
<html class="fixed sidebar-left-collapsed">

<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="<?php echo base_url() ?>/assets/images/favicon.png" type="image/ico">
	<title>Apotek Mama</title>
	<meta name="author" content="Paber">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/magnific-popup/magnific-popup.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/bootstrap-datepicker/css/datepicker3.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/select2/select2.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/stylesheets/theme.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/stylesheets/skins/default.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/stylesheets/theme-custom.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/pnotify/pnotify.custom.css" />
	

	<!-- Head Libs -->
	<script src="<?php echo base_url() ?>/assets/vendor/modernizr/modernizr.js"></script>
</head>

<body class="bgbody">
	<section class="body">

		<?php $this->load->view("komponen/header.php") ?>
		<div class="inner-wrapper">
			<?php $this->load->view("komponen/sidebar.php") ?>
			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Profil Apotek</h2>
				</header>
				<!-- start: page -->

				<div class="row">
					<div class="col-md-4 col-lg-3">
						<section class="panel panel-primary">
							<header class="panel-heading">
								<h4 class="panel-title">Logo Apotek</h4>
							</header>
							<div class="panel-body">
								<div class="mb-md">
									<img src="<?php echo base_url(); ?>assets/images/<?php echo $profil->row()->logo; ?>" class="rounded img-responsive" alt="Logo Apotek">
								</div>
							</div>
						</section>

					</div>
					<div class="col-md-8 col-lg-6">
						<section class="panel panel-primary">
							<header class="panel-heading">
								<h4 class="panel-title">Form Edit Profil</h4>
							</header>
							<div class="panel-body">

								<?php
								if (level_user('tools', 'profil', $this->session->userdata('kategori'), 'edit') > 0) {
								?>
									<?php echo form_open('tools/editprofile', ' id="FormulirEdit" class="form-horizontal" enctype="multipart/form-data"'); ?>
								<?php } ?>
								<fieldset>
									<div class="form-group nama_apotek">
										<label class="col-md-3 control-label" for="nama_apotek">Nama Apotek</label>
										<div class="col-md-8">
											<input type="text" class="form-control" name="nama_apotek" value="<?php echo $this->security->xss_clean($profil->row()->nama_apotek); ?>">
										</div>
									</div>
									<div class="form-group alamat">
										<label class="col-md-3 control-label" for="alamat">Alamat Apotek</label>
										<div class="col-md-8">
											<textarea class="form-control" name="alamat"><?php echo $this->security->xss_clean($profil->row()->alamat); ?></textarea>
										</div>
									</div>
									<div class="form-group telepon">
										<label class="col-sm-3 control-label">Telepon</label>
										<div class="col-md-8">
											<input type="text" name="telepon" id="telepon" value="<?php echo $this->security->xss_clean($profil->row()->telepon); ?>" class="form-control" />
										</div>
									</div>
									<!-- npwp -->
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nomor NPWP</label>
										<div class="col-md-8">
											<input type="text" name="no_npwp" id="no_npwp" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->no_npwp); ?>" required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nama NPWP</label>
										<div class="col-md-8">
											<input type="text" name="nama_npwp" id="nama_npwp" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->nama_npwp); ?>" required />
										</div>
									</div>
									<div class="form-group alamat">
										<label class="col-sm-3 control-label">Alamat NPWP</label>
										<div class="col-md-8">
											<textarea rows="2" class="form-control" name="alamat_npwp" id="alamat_npwp" required><?php echo $this->security->xss_clean($profil->row()->alamat_npwp); ?></textarea>
										</div>
									</div>
									<!-- bank -->
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nama Bank</label>
										<div class="col-md-8">
											<input type="text" name="bank" id="bank" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->bank); ?>" required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nomor Rekening</label>
										<div class="col-md-8">
											<input type="text" name="rekening" id="rekening" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->rekening); ?>" required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Rekening Atas Nama</label>
										<div class="col-md-8">
											<input type="text" name="an" id="an" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->an); ?>" required />
										</div>
									</div>
									<!-- apoteker -->
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">No. Ijin Apoteker</label>
										<div class="col-md-8">
											<input type="text" name="no_apoteker" id="no_apoteker" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->no_apoteker); ?>" required />
										</div>
									</div>
									<div class="form-group masa_apoteker">
										<label class="col-sm-3 control-label">Masa Berlaku</label>
										<div class="col-md-8">
											<input type="text" name="masa_apoteker" id="masa_apoteker" class="form-control tanggal_masa" value="<?php echo $this->security->xss_clean($profil->row()->tgl_masa); ?>" data-plugin-datepicker required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nama Apoteker</label>
										<div class="col-md-8">
											<input type="text" name="apoteker" id="apoteker" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->apoteker); ?>" required />
										</div>
									</div>
									<div class="form-group alamat">
										<label class="col-sm-3 control-label">Alamat KTP Apoteker</label>
										<div class="col-md-8">
											<textarea rows="2" class="form-control" name="alamat_ktp" id="alamat_ktp" required><?php echo $this->security->xss_clean($profil->row()->alamat_ktp); ?></textarea>
										</div>
									</div>
									<div class="form-group alamat">
										<label class="col-sm-3 control-label">Alamat Tinggal Apoteker</label>
										<div class="col-md-8">
											<textarea rows="2" class="form-control" name="alamat_tinggal" id="alamat_tinggal" required><?php echo $this->security->xss_clean($profil->row()->alamat_tinggal); ?></textarea>
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Kontak Apoteker</label>
										<div class="col-md-8">
											<input type="text" name="hp" id="hp" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->hp); ?>"  required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">No SIPA</label>
										<div class="col-md-8">
											<input type="text" name="no_sipa" id="no_sipa" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->no_sipa); ?>"  required />
										</div>
									</div>
									<div class="form-group masa_apoteker">
										<label class="col-sm-3 control-label">Masa Berlaku SIPA</label>
										<div class="col-md-8">
											<input type="text" name="tanggal_sipa" id="tanggal_sipa" class="form-control tanggal_sipa" value="<?php echo $this->security->xss_clean($profil->row()->tgl_sipa); ?>"  data-plugin-datepicker required />
										</div>
									</div>
									<div class="form-group mt-lg nama_supplier">
										<label class="col-sm-3 control-label">Nama TTK yang didelegasikan</label>
										<div class="col-md-8">
											<input type="text" name="nama_ttk" id="nama_ttk" class="form-control" value="<?php echo $this->security->xss_clean($profil->row()->nama_ttk); ?>"  required />
										</div>
									</div>
									<div class="form-group footer_struk">
										<label class="col-md-3 control-label" for="footer_struk">Footer Struk Belanja</label>
										<div class="col-md-8">
											<input type="text" class="form-control" name="footer_struk" value="<?php echo $this->security->xss_clean($profil->row()->footer_struk); ?>">
										</div>
									</div>
									<div class="form-group logo">
										<label class="col-md-3 control-label" for="profileCompany">Logo </small></label>
										<div class="col-md-8">
											<input type="file" class="form-control" name="logo"><small>Kosongkan jika tidak diganti
										</div>
									</div>
								</fieldset>
								<hr class="dotted">

								<?php
								if (level_user('tools', 'profil', $this->session->userdata('kategori'), 'edit') > 0) {
								?>
									<div class="panel-footer">
										<div class="row">
											<div class="col-md-9 col-md-offset-3">
												<button type="submit" class="btn btn-primary" id="submitformEdit">Submit</button>
											</div>
										</div>
									</div>
								<?php } ?>
								</form>

							</div>
						</section>

					</div>

				</div>
				<!-- end: page -->

				<!-- end: page -->
			</section>
		</div>
	</section>


	<!-- Vendor -->
	<script src="<?php echo base_url() ?>assets/vendor/jquery/jquery.min.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/bootstrap/js/bootstrap.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/nanoscroller/nanoscroller.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/magnific-popup/magnific-popup.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/select2/select2.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
	<script src="<?php echo base_url() ?>assets/javascripts/theme.js"></script>
	<script src="<?php echo base_url() ?>assets/vendor/pnotify/pnotify.custom.js"></script>
	<script src="<?php echo base_url() ?>assets/javascripts/theme.init.js"></script>

	<?php
	if (level_user('tools', 'profil', $this->session->userdata('kategori'), 'edit') > 0) {
	?>
		<script type="text/javascript">
		$('.tanggal_masa').datepicker({
            format: 'yyyy-mm-dd' 
        });
        $('.tanggal_sipa').datepicker({
            format: 'yyyy-mm-dd' 
        });
			document.getElementById("FormulirEdit").addEventListener("submit", function(e) {
				blurForm();
				$('.help-block').hide();
				$('.form-group').removeClass('has-error');
				document.getElementById("submitformEdit").setAttribute('disabled', 'disabled');
				$('#submitformEdit').html('Loading ...');
				var form = $('#FormulirEdit')[0];
				var formData = new FormData(form);
				var xhrAjax = $.ajax({
					type: 'POST',
					url: $(this).attr('action'),
					data: formData,
					processData: false,
					contentType: false,
					cache: false,
					dataType: 'json'
				}).done(function(data) {
					if (!data.success) {
						$('input[name=<?php echo $this->security->get_csrf_token_name(); ?>]').val(data.token);
						document.getElementById("submitformEdit").removeAttribute('disabled');
						$('#submitformEdit').html('Submit');
						var objek = Object.keys(data.errors);
						for (var key in data.errors) {
							if (data.errors.hasOwnProperty(key)) {
								var msg = '<div class="help-block" for="' + key + '">' + data.errors[key] + '</span>';
								$('.' + key).addClass('has-error');
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
						window.setTimeout(function() {
							location.reload();
						}, 1000);
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
					window.setTimeout(function() {
						location.reload();
					}, 2000);
				});
				e.preventDefault();
			});
		</script>
	<?php } ?>
</body>

</html>