# Snort-Notify
Como recibir notificaciones de las alertas del IDS Snort en Telegram?

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/62608964-b9bf-46dd-96da-a0f3a524e247)

1°Habiendo configurado y personalizado previamente las alertas y las conexiones a la red que queremos analizar

```
alert icmp $HOME_NET any -> any any (msg:"SOMEONE IS DOING PING";sid:12345;rev:3;)

alert tcp any any ->$HOME_NET 22 (msg:"DO YOU TRYING TO HACK ME?";falgs:5;sid:10001;)

alert tcp $EXTERNAL_NET any -> $HOME_NET 3306 (msg:"MySQL EXTERNAL INTRUSION DETECTED";sid:1776;rev:3;)

alert tcp $HOME_NET any -> any any (content:"www.facebook.com";msg:"SOMEONE IS ACCESING TO FACEBOOK DURING WORK HOURS!";sid:10008;rev:3;)
```

2°En el archivo bot-tele.sh añadir el token del chat de telegram junto con el ID creados mediante el Bot de Telegram

3°Activar el archivo .sh para que escuche las alertas (que en realidad lo que hace es mapear con el archivo .log que almacena las alertas detectadas)

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/538644ad-cc27-49fb-8fd2-64fc1a62a498)


4°Ejecutar el comando de snort con los siguientes parametros

```
sudo snort -c snort.conf -l /PATH/ -d -A console > /PATH/
```

Norificación recibida:

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/6ba10fcd-5b05-41d6-a40e-2df7c5b74c9e)




