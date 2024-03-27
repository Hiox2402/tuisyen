<?php
class Admin_model extends CI_Model {
 
    public function __construct()
    {
        $this->load->database();
    }
    
    public function get_user($id = 0)
    {
        if ($id === 0)
        {
            $query = $this->db->get('admin');
            return $query->result_array();
        }
 
        $query = $this->db->get_where('admin', array('id' => $id));
        return $query->row_array();
    }
    
    public function get_user_login($email, $password)
    {
        $query = $this->db->get_where('admin', array('email' => $email, 'password' => md5($password)));        
        //return $query->num_rows();
        return $query->row_array();
    }
    
    public function set_user($id = 0)
    {
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'email' => $this->input->post('email'),
            'password' => $this->input->post('password'),
            'updated_at' => date('Y-m-d H:i:s')
        );
            
        if ($id == 0) {
            return $this->db->insert('admin', $data);
        } else {
            $this->db->where('id', $id);
            return $this->db->update('admin', $data);
        }
    }
    
    public function delete_user($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('admin');
    }    
    
}