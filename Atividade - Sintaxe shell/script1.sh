echo "Bem vindo ao sistema!"

read -p "Digite o seu nome: " nome
read -p "Digite a disciplina que está cursando: " disciplina
read -p "Qual seu semestre atual: " semestre

data_hora=$(date)
home_usuario=$HOME

echo "Olá, $nome! Bem vindo à disciplina $disciplina no $semestre semestre."
echo "Data e hora atual: $data_hora"
echo "Seu diretório home é: $home_usuario"
