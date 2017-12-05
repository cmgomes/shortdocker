#configurations
RED='\033[0;31m'
NC='\033[0m' # No Color
DarkGray='\033[1;30m'
LightGreen='\033[1;32m'
Cyan='\033[0;36m'

#aliases
alias ll='ls -la'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dcup='docker-compose up -d'
alias dcdown='docker-compose down'
alias di='docker images'

#docker exec command
function din() {
	bash -c "docker exec -it $1 bash"
}

function dex() {
	bash -c "docker exec $1 $2 $3 $4"
}

function dst() {
	bash -c "docker start $1"
}

function dres() {
	bash -c "docker restart $1 $2 $3 $4"
}

function drm() {
	bash -c "docker rm $1 $2 $3 $4 $5 $6 $7 $8"
}

function drmi() {
	bash -c "docker rmi $1 $2 $3 $4 $5 $6 $7 $8"
}

function dhelp() {
	echo "Olá, esse é o catálogo de comandos abreviados para docker"
	echo "Os comandos disponíveis são:"
	echo -e "- ${LightGreen}dps${NC} 				- Executa o comando '${DarkGray}docker ps${NC}'"
	echo -e "- ${LightGreen}din${NC} 	${Cyan}[container]${NC}		- Entra no container indicado"
	echo -e "- ${LightGreen}dex${NC}	${Cyan}[container] [commands]${NC}	- Executa comando dentro do container indicado"
	echo -e "- ${LightGreen}dcup${NC}				- Executa o comando '${DarkGray}docker-compose up -d${NC}'"
	echo -e "- ${LightGreen}dcdown${NC}			- Executa o comando '${DarkGray}docker-compose down${NC}'"
	echo -e "- ${LightGreen}dres${NC} ${Cyan}[containers]${NC}		- Executa o comando '${DarkGray}docker restart${NC}' em até 4 containers separados por espaço"
	echo -e "- ${LightGreen}drmi${NC} ${Cyan}[images]${NC}			- Executa o comando '${DarkGray}docker rmi${NC}' em até 8 imagens separadas por espaço"
	echo -e "- ${LightGreen}di${NC} 				- Executa o comando '${DarkGray}docker images${NC}'"
	echo -e "- ${LightGreen}drm${NC} 				- Executa o comando '${DarkGray}docker rm${NC}' em até 8 containers separados por espaço"
	echo -e "- ${LightGreen}dst${NC}  ${Cyan}[container]${NC} 		- Executa o comando '${DarkGray}docker start${NC}' iniciando o container informado"
}
