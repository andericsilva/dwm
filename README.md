# dwm 6.2
## Instalar
    git clone https://github.com/andericsilva/dwm.git && cd dwm && sh make

## Configurações
    nano config.h

## .profile

```bash
# resolve o bug de apps java
export _JAVA_AWT_WM_NONREPARENTING=1 

# bateria, calendário, memória e relógio
while true; do
    bat="$(acpi -b)"
    mem="$(free -h --si | awk '(NR==2){ print $3 }')"
    status="$(echo "$bat, Mem: $mem ~" && date +"%A, %d.%b.%Y %H:%M")"
    xsetroot -name " $(echo $status | xargs) "
    sleep 1s    # atualiza a cada 1 segundo
done &

# papel de parede
nitrogen --restore
```
