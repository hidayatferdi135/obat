<?php
defined('BASEPATH') OR exit('no direct script access allowed');
require dirname(__FILE__).'/dompdf/dompdf/autoload.inc.php';

use Dompdf\Dompdf;
class Pdf
{
	// protected $ci;
	public function __construct()
	{
		$pdf = new DOMPDF();
		$CI =& get_instance();
		$CI->dompdf = $pdf;
	}
	
}
