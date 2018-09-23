<?php
  class GETTINGG
  {
      private $Name;
      private $Name1;
      private $LaNa;
      private $LaNa1;
      private $User;
      private $Mail;
      private $Age;
      private $Genders;
      private $Data;

      public function __construct()
      {
          $this->Name = $_POST['Name'];
          $this->Name1 = $_POST['Name1'];
          $this->LaNa = $_POST['LaName'];
          $this->LaNa1 = $_POST['LaName1'];
          $this->User = $_POST['Usuario'];
          $this->Mail = $_POST['Correo'];
          $this->Age = $_POST['Age'];
          $this->Genders = $_POST['Gender'];
          $this->Data = array(
            'Name' => "$this->Name",
            'Name1' => "$this->Name1",
            'LaName' => "$this->LaNa",
            'LaName1' => "$this->LaNa1",
            'Uss' => "$this->User",
            'Ml' => "$this->Mail",
            'Ae' => "$this->Age",
            'G' => "$this->Genders",
        );

          //foreach ($this->Data as $key => $value)
          //{
          //echo "Valor" . "   ".$value."<br>";
          //}
          //self::How_Action($this->Name,$this->Name1,$this->LaNa,$this->LaNa1,$this->User,$this->Mail,$this->Age,$this->Genders);
          //self::Campps($this->Name,$this->Name1,$this->LaNa,$this->LaNa1,$this->User,$this->Mail,$this->Age,$this->Genders);
          self::How_Action($this->Data);
      }

      public function How_Action($Kwargs)
      {
          //echo $N1 ."  ". $N2;
          //echo $G;
          extract($Kwargs);
          //echo $Name. " ". $Name1." ".$LaName." ".$LaName1." ".$Uss. " ".$Ml." ".$Ae." "." ".$G;
          require_once 'Connectt.php';
          $coonect = new CONNECCT();
          $coonect->Con();
          $Sel = "SELECT Maill FROM users WHERE Maill='$Ml'";
          $Resultt = $coonect->Cons->query($Sel);

          if (($Name == '') || ($Name1 == '') || ($LaName == '') || ($LaName1 == '') || ($Uss == '') || ($Ml == '') || ($Ae == '') || ($G == 'DEFAULT')) {
              echo '1';
          }
          elseif ($Resultt->num_rows > 0)
          {
              echo '2';

          }

         else {
              //echo $Name. " ". $Name1." ".$LaName." ".$LaName1." ".$Uss. " ".$Ml." ".$Ae." "." ".$G;
              $Query = "CALL ADD_US('".$Name."','".$Name1."','".$LaName."','".$LaName1."','".$Ae."' ,'".$G."','".$Ml."','".$Uss."')";
              $coonect->Cons->query($Query);
              echo '3';
          }
      }
  }

  $geting = new GETTINGG();
