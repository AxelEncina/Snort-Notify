# Snort-Notify
Como recibir notificaciones de las alertas del IDS Snort en Telegram?

```
function test() {
  console.log("notice the blank line before this function?");
}
```


![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/62608964-b9bf-46dd-96da-a0f3a524e247)

1°Habiendo configurado y personalizado previamente las alertas y las conexiones a la red que queremos analizar

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/fe058e1b-4ba8-4498-bfc3-1ba723327adb)

2°En el archivo bot-tele.sh añadir el token del chat de telegram junto con el ID creados mediante el Bot de Telegram

3°Activar el archivo .sh para que escuche las alertas (que en realidad lo que hace es mapear con el archivo .log que almacena las alertas detectadas)

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/538644ad-cc27-49fb-8fd2-64fc1a62a498)


4°Ejecutar el comando de snort con los siguientes parametros

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/bf0d4193-271a-4805-9f29-a7d80cf3877d)

Norificación recibida:

![imagen](https://github.com/AxelEncina/Snort-Notify/assets/83794091/6ba10fcd-5b05-41d6-a40e-2df7c5b74c9e)




