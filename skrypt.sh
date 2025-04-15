#!/bin/bash
if [[ "$1" == "--date" ]]; then
  date
fi

if [[ "$1" == "--logs" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log$i.txt"
    echo -e "$filename\nskrypt.sh\n$(date)" > "$filename"
  done
fi

if [[ "$1" == "--help" ]]; then
  echo "--date        pokazuje dzisiejszą datę"
  echo "--logs [N]    tworzy N plików logX.txt"
  echo "--help        pokazuje dostępne opcje"
fi

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for ((i=1; i<=count; i++)); do
    filename="log$i.txt"
    echo -e "$filename\nskrypt.sh\n$(date)" > "$filename"
  done
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "--date | -d        pokazuje dzisiejszą datę"
  echo "--logs [N] | -l N  tworzy N plików logX.txt"
  echo "--help | -h        pokazuje dostępne opcje"
fi

elif [[ "$1" == "--init" ]]; then
  git clone https://github.com/szweddd/lab4-poprawka.git cloned_repo
  echo "export PATH=\$PATH:$(pwd)/cloned_repo" >> ~/.bashrc
  source ~/.bashrc
fi

elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
  count=${2:-100}
  mkdir -p errorX
  for ((i=1; i<=count; i++)); do
    echo "Error file $i" > "errorX/error$i.txt"
  done
fi

errorX/
