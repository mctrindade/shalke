
        <?php
        // put your code here
        require_once '../Dao/ColaboradorDAO.php';
        require_once '../Dto/ColaboradorDTO.php';
        
        
$nome = $_POST ["nome"];
$cpf = $_POST ["cpf"];
$rg = $_POST ["rg"];
$datanascimento = $_POST ["datanascimento"];
$sexo = $_POST ["sexo"];
$raca = $_POST ["raca"];
$email = $_POST ["email"];
$website = $_POST ["website"];
$endereco = $_POST ["endereco"];
$cidade = $_POST ["cidade"];
$cep = $_POST ["cep"];
$uf = $_POST ["uf"];
$telefone = $_POST ["telefone"];
$profissao = $_POST ["profissao"];
$Perfil_idPerfil = $_POST["Perfil_idPerfil"];
$Nucleo_Atendimento_idNucleo_Atendimento = $_POST ["Nucleo_Atendimento_idNucleo_Atendimento"];

$ColaboradorDTO = new ColaboradorDTO();

$ColaboradorDTO->setNome($nome);
$ColaboradorDTO->setCpf($cpf);
$ColaboradorDTO->setRg($rg);
$ColaboradorDTO->setDatanascimento($datanascimento);
$ColaboradorDTO->setSexo($sexo);
$ColaboradorDTO->setRaca($raca);
$ColaboradorDTO->setEmail($email);
$ColaboradorDTO->setWebsite($website);
$ColaboradorDTO->setEndereco($endereco);
$ColaboradorDTO->setCidade($cidade);
$ColaboradorDTO->setCep($cep);
$ColaboradorDTO->setUf($uf);
$ColaboradorDTO->setTelefone($telefone);
$ColaboradorDTO->setProfissao($profissao);
$ColaboradorDTO->setPerfil_idPerfil($Perfil_idPerfil);
$ColaboradorDTO->setNucleo_Atendimento_idNucleo_Atendimento($Nucleo_Atendimento_idNucleo_Atendimento);


$ColaboradorDAO = new ColaboradorDAO;
$sucesso = $ColaboradorDAO->salvarColaborador($ColaboradorDTO);

if ($sucesso) {
    echo "<script>";
    echo "alert(' Cadastro realizado com sucesso!');";
    echo "window.location.href='../View/ListarColaboradores.php';";
    echo "</script>";
} else {
    echo "<script>";
    echo "alert.(' Erro ao cadastrar!');";
    echo "window.location.href='../View/ListarColaboradores.php';";
    echo "</script>";
}




?>
   