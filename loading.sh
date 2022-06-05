#!/bin/bash

progress() {
    r='\033[1;31m'
    g='\033[1;32m'
    c='\033[1;36m'
    w='\033[1;37m'
    n='\033[0m'
    PRC=`printf "%.0f" ${1}`
    SHW=`printf "%3d\n" ${PRC}`
    LNE=`printf "%.0f" $((${PRC}/2))`
    LRR=`printf "%.0f" $((${PRC}/2-12))`; if [ ${LRR} -le 0 ]; then LRR=0; fi;
    LCC=`printf "%.0f" $((${PRC}/2-36))`; if [ ${LCC} -le 0 ]; then LCC=0; fi;
    LGG=`printf "%.0f" $((${PRC}/2-48))`; if [ ${LGG} -le 0 ]; then LGG=0; fi;
    LRR_=""
    LCC_=""
    LGG_=""
    for ((i=1;i<=13;i++))
    do
    	DOTS=""; for ((ii=${i};ii<13;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRR_="${LRR_}#"; else LRR_="${LRR_}."; fi  
    	echo -ne "  ${w}${SEC}  ${r}${LRR_}${DOTS}${c}............${g}............ ${SHW}%${n}\r" 	
    	if [ ${LNE} -ge 14 ]; then sleep .01; fi
    done
    for ((i=26;i<=37;i++))
    do
    	DOTS=""; for ((ii=${i};ii<37;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LCC_="${LCC_}#"; else LCC_="${LCC_}."; fi
    	echo -ne "  ${w}${SEC}  ${r}${LRR_}${LY}${LYY_}${c}${LCC_}${DOTS}${g}............ ${SHW}%${n}\r"
    	if [ ${LNE} -ge 26 ]; then sleep .01; fi
    done
    for ((i=38;i<=49;i++))
    do
    	DOTS=""; for ((ii=${i};ii<49;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LGG_="${LGG_}#"; else LGG_="${LGG_}."; fi
    	echo -ne "  ${w}${SEC}  ${r}${LRR_}${LY}${LYY_}${c}${LCC_}${g}${LGG_}${DOTS} ${SHW}%${n}\r"
    	if [ ${LNE} -ge 38 ]; then sleep .01; fi
    done
}

loading (){
printf "\n"
progress 0
progress 5
progress 10
progress 15
progress 20
progress 25
progress 30
progress 35
progress 40
progress 45
progress 50
progress 55
progress 60
progress 65
progress 70
progress 75
progress 80
progress 85
progress 90
progress 95
progress 100
printf "\n"
}

loading
