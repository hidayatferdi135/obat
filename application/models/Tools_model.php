<?php
class Tools_model extends CI_Model{   
    public function rulesprofiledit()
    {
        return [
            [
            'field' => 'nama_apotek',
            'label' => 'Nama Apotek',
            'rules' => 'required',
            ],
            [
            'field' => 'alamat',
            'label' => 'Alamat',
            'rules' => 'required',
            ], 
        ];
    } 
    public function updatedataprofile()
    {
        $post = $this->input->post();
        $this->nama_apotek = $post["nama_apotek"];
        $this->alamat = $post["alamat"];
        $this->telepon = $post["telepon"];
        $this->hp = $post["hp"];
        $this->no_npwp = $post["no_npwp"];
        $this->nama_npwp = $post["nama_npwp"];
        $this->alamat_npwp = $post["alamat_npwp"];
        $this->bank = $post["bank"];
        $this->rekening = $post["rekening"];
        $this->an = $post["an"];
        $this->no_apoteker = $post["no_apoteker"];
        $this->tgl_masa = $post["masa_apoteker"];
        $this->apoteker = $post["apoteker"];
        $this->alamat_ktp = $post["alamat_ktp"];
        $this->alamat_tinggal = $post["alamat_tinggal"];
        $this->no_sipa = $post["no_sipa"];
        $this->tgl_sipa = $post["tanggal_sipa"];
        $this->nama_ttk = $post["nama_ttk"];
        $this->footer_struk = $post["footer_struk"]; 
        
        if (!empty($_FILES["logo"]["name"])) {
            $this->logo = $this->_uploadLogo();
        }   
        return $this->db->update("profil_apotek", $this, array('id' => '1'));
    }
    private function _uploadLogo()
    {
        $post = $this->input->post();
        $config['upload_path']          = './assets/images/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['file_name']            = time();
        $config['overwrite']			= true;
        $config['max_size']             = 1024;  
        $this->load->library('upload', $config); 
        if ($this->upload->do_upload('logo')) {
            return $this->upload->data("file_name");
        } 
        return "logo.png";
    } 
    
	public function upload_file($nama_file){
		$this->load->library('upload');   
		$config['upload_path'] = './excel/';
		$config['allowed_types'] = 'xlsx';
		$config['file_name'] = $nama_file;
		$config['max_size']	= '2048';
		$config['overwrite'] = true; 
		$this->upload->initialize($config);  
		if($this->upload->do_upload('excelfile')){   
			return array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
		}else{ 
			return array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
		 }
    }
    public function input_semua($data){
		return $this->db->insert_batch('master_item', $data);
	}
}