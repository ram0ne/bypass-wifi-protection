# bypass-wifi-protection
Burlar segurança do roteador apos tentativas de DoS.
O roteador do alvo vai bloquear as tentativas (pacotes).
Esse script vai derrubar a interface de rede, alterar o mac address randomicamente, e subir novamente a interface.
Apos 5 segundos nova investida e novamente alteração do mac address.

Tutorial:
1. chmod a+x bybass.sh
2. ./bypass <MAC> <CANAL> <INTERFACE>
3. Para cessar use: CTRL + C

Created by: Ram1
