#!/bin/bash
################################################################################################
# Script para criação de arquivos e diretórios no Linux para treinamento dos comandos básicos  #
# Creator Smith Braz - 5M1TH - https://www.linkedin.com/in/smith-braz/                         #
# Github https://github.com/thiagosmith                                                        #
################################################################################################

# Diretório principal
mkdir -p estrutura

# Diretórios temáticos
mkdir -p estrutura/animais
touch estrutura/animais/gato.txt estrutura/animais/cachorro.csv estrutura/animais/elefante.sql estrutura/animais/papagaio.doc estrutura/animais/iguana.xls estrutura/animais/cobra.sh
mkdir -p estrutura/peixes
touch estrutura/peixes/sardinha.txt estrutura/peixes/tubarao.csv estrutura/peixes/dourado.sql estrutura/peixes/corvina.doc estrutura/peixes/panga.pdf  estrutura/peixes/beta.xls
mkdir -p estrutura/carros
touch estrutura/carros/fusca.txt estrutura/carros/gol estrutura/carros/camaro estrutura/carros/hb20 estrutura/carros/porsche estrutura/carros/lamborghini estrutura/carros/mustang estrutura/carros/ferrari estrutura/carros/bmw estrutura/carros/civic

# Diretórios cybersecurity
mkdir -p estrutura/cybersecurity
mkdir -p estrutura/cybersecurity/blue-team
mkdir -p estrutura/cybersecurity/blue-team/response
touch estrutura/cybersecurity/blue-team/response/informativo.txt estrutura/cybersecurity/blue-team/response/medio.bak estrutura/cybersecurity/blue-team/response/critico.csv
mkdir -p estrutura/cybersecurity/blue-team/defense
touch estrutura/cybersecurity/blue-team/defense/ids.txt estrutura/cybersecurity/blue-team/defense/siem.doc estrutura/cybersecurity/blue-team/defense/ips.sql
mkdir -p estrutura/cybersecurity/blue-team/firewall
touch estrutura/cybersecurity/blue-team/firewall/packet.txt estrutura/cybersecurity/blue-team/firewall/drop.doc estrutura/cybersecurity/blue-team/firewall/allow.pdf estrutura/cybersecurity/blue-team/firewall/denny.db
mkdir -p estrutura/cybersecurity/red-team
mkdir -p estrutura/cybersecurity/red-team/pentest
touch estrutura/cybersecurity/red-team/pentest/blackbox.csv estrutura/cybersecurity/red-team/pentest/whitebox.txt estrutura/cybersecurity/red-team/pentest/greybox.doc
mkdir -p estrutura/cybersecurity/red-team/vulnerability
touch estrutura/cybersecurity/red-team/vulnerability/dos.txt estrutura/cybersecurity/red-team/vulnerability/rce.sql estrutura/cybersecurity/red-team/vulnerability/sqli.doc
mkdir -p estrutura/cybersecurity/red-team/operator
touch estrutura/cybersecurity/red-team/operator/fisico.txt estrutura/cybersecurity/red-team/operator/phishing.xls estrutura/cybersecurity/red-team/operator/credentials.sh
mkdir -p estrutura/cybersecurity/white-team
mkdir -p estrutura/cybersecurity/white-team/bia
touch estrutura/cybersecurity/white-team/bia/disastre.txt estrutura/cybersecurity/white-team/bia/recuperacao.bak estrutura/cybersecurity/white-team/bia/continuidade.doc
mkdir -p estrutura/cybersecurity/white-team/compliance
touch estrutura/cybersecurity/white-team/compliance/policy.txt estrutura/cybersecurity/white-team/compliance/report.pdf estrutura/cybersecurity/white-team/compliance/mitigate.sql
mkdir -p estrutura/cybersecurity/white-team/standards
touch estrutura/cybersecurity/white-team/standards/owasp.html estrutura/cybersecurity/white-team/standards/ptes.asp estrutura/cybersecurity/white-team/standards/iso.27001
mkdir -p estrutura/cybersecurity/purple-team
mkdir -p estrutura/cybersecurity/purple-team/integration
touch estrutura/cybersecurity/purple-team/integration/collaboration.txt estrutura/cybersecurity/purple-team/integration/communication.sql
mkdir -p estrutura/cybersecurity/purple-team/trainning
touch estrutura/cybersecurity/purple-team/trainning/mitre.aspx estrutura/cybersecurity/purple-team/trainning/cyber-kill-chain.md estrutura/cybersecurity/purple-team/trainning/ttp.py
mkdir -p estrutura/cybersecurity/purple-team/workshop
touch estrutura/cybersecurity/purple-team/workshop/table-top.txt estrutura/cybersecurity/purple-team/workshop/war-games.pdf estrutura/cybersecurity/purple-team/workshop/exercise.exe

# Diretório escola e matérias
declare -A professores_por_materia
professores_por_materia[matematica]="ana joao marcos beatriz claudio silvia rafael aline bruno carla"
professores_por_materia[historia]="paula ricardo fernanda lucas julia daniel amanda sergio natalia roberto"
professores_por_materia[biologia]="maria andre leticia gustavo fabiana tiago viviane eduardo renata felipe"
professores_por_materia[portugues]="monica leonardo isabela caio priscila rogerio tatiane vitor elisa brenda"
professores_por_materia[geografia]="simone arthur lorena diego camila henrique solange pedro daniela mauricio"

extensoes=(pdf txt csv log doc)

for materia in "${!professores_por_materia[@]}"; do
  mkdir -p estrutura/escola/$materia
  nomes=(${professores_por_materia[$materia]})
  for nome in "${nomes[@]}"; do
    ext=${extensoes[$((RANDOM % ${#extensoes[@]}))]}
    touch estrutura/escola/$materia/$nome.$ext
  done
done

echo "Estrutura completa criada com sucesso!"
