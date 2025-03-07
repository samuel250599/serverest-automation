
## Pré-requisitos

1. **macOS**
2. Python 3.8+
3. ChromeDriver
4. Git

## ⚙️ Instalação

```bash
# Clonar repositório
git clone https://github.com/seu-usuario/serverest-automation.git
cd serverest-automation

# Instalar dependências
pip3 install -r requirements.txt

# Configurar ChromeDriver (via Homebrew)
brew install --cask chromedriver

🧪 Cenários Implementados
Testes de UI (Frontend)
Login com credenciais válidas

Valida autenticação bem-sucedida

Login com email inválido

Verifica mensagem de erro

Cadastro de novo produto

Testa fluxo completo de cadastro

Testes de API
Criação de usuário administrador

Valida resposta 201 e mensagem de sucesso

Busca de usuário por ID

Verifica consistência dos dados retornados

Login via API com token

Testa geração de token de autorização


# Executar todos os testes
robot -d results tests/

# Executar apenas testes UI
robot -d results -i ui tests/ui/

# Executar apenas testes API
robot -d results -i api tests/api/

# Executar por tag específica
robot -d results -i login tests/


Melhorias Implementadas
Padrão Page Object Model

Separação clara entre lógica de teste e elementos da UI

Geração Dinâmica de Dados

Uso da biblioteca Faker para criação de dados de teste

Gestão de Ambientes

Variáveis separadas para diferentes ambientes (dev/staging)

Validação de Schema

Verificação de estrutura de respostas JSON

Relatórios Avançados

Geração automática de relatórios HTML com screenshots

Tags Estratégicas

Organização de testes por categorias e critérios



Resultados
Relatórios detalhados são gerados automaticamente na pasta results/ após execução:

report.html

log.html

output.xml


Workflow Recomendado
Crie uma branch para nova funcionalidade

Implemente os testes com tags adequadas

Execute testes localmente

Faça commit com mensagem descritiva

Envie para repositório remoto


