<?php

  class CONNECCT
  {
      public $keyss = array();
      public $Cons;

      public function Con()
      {
          $this->Keyss['Host'] = 'localhost';
          $this->Keyss['DbName'] = 'pruebas';
          $this->Keyss['User'] = 'root';
          $this->Keyss['Pass'] = '';           //this databae don not have pass

          //foreach ($this->Keyss as $Key => $Val) {
          //  echo 'Calve: '.' '.$Key.' '.'Valor: '.' '.$Val.'<br>';
          // }
          self::Open_Conect();
      }

      public function Open_Conect()
      {
          $this->Cons = new mysqli($this->Keyss['Host'], $this->Keyss['User'], $this->Keyss['Pass'], $this->Keyss['DbName']);
          //validate connection
          /*
          if ($this->Cons->connect_errno) {
              echo 'La conexión fallo';
          } else {
              echo 'Conexión exitosa';
          }*/
      }
  }
