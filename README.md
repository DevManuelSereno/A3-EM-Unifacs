# A3 - Estruturas Matemáticas - Unifacs

## Passo a Passo de instalação e execução do código fonte

Primeiramente, você precisa ter instalado Julia na sua máquina. Para instalar, basta abrir a Microsoft Store, pesquisar por Julia e baixar.

Após instalar o Julia, abra qualquer editor de texto simples de sua preferência (como o bloco de notas), copie e cole o código completo da aplicação neste novo arquivo e salve o arquivo com a extensão .jl (probabilidade_esporte.jl por exemplo) em um local de fácil acesso, como C:/ProjetoJulia .

Após salvar o arquivo, digite CMD no menu iniciar do windows e clique em abrir.

Ao abrir o terminal, digite julia e aperte enter.

Entrando no ambiente Julia, primeiro você deve instalar os pacotes necessários para rodar a aplicação. Para fazer isso, ative o gerenciador de pacotes usando o comando using Pkg .

Agora, instale os pacotes StatsBase e Plots. Isso só precisa ser feito uma vez por ambiente Julia. Para instalar, digite os seguintes comandos no terminal:
Pkg.add(“StatsBase”)
Pkg.add(“Plots”)
Aguarde a conclusão da instalação de ambos os pacotes.

Finalizada a instalação, carregue os pacotes para que fiquem disponíveis as funções. Para carregar os pacotes, use os seguintes comandos no terminal:
using StatsBase
using Plots
Se não houver uma saída visível, o carregamento foi bem sucedido.

Para executar o código, use o comando cd() para mudar para o diretório que o arquivo está salvo, como por exemplo: cd(“C:/ProjetoJulia”).

Estando no diretório correto, agora execute o seu arquivo .jl usando o seguinte comando:
include(“probabilidade_esporte.jl”)

É necessário não haver espaço em branco no comando. Se der um espaço entre o include e o parênteses, por exemplo, a aplicação não sera efetuada.
