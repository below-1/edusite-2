<?php

namespace Edusite\Model;

/**
 * @Entity @Table(name="edu_admin")
 */
class Admin {

    /**
     * @Id @Column(type="integer") @GeneratedValue
     */
    protected $id;

    /**
     * @Column(type="string", nullable=true)
     */
    protected $username;

    /**
     * @Column(type="string", nullable=true)
     */
    protected $password;

    public function getId() { return $this->id; }
    public function getUsername() { return $this->username; }
    public function getPassword() { return $this->password; }

    public function setUsername($val) { $this->username = $val; }
    public function setPassword($val) { $this->password = $val; }

}