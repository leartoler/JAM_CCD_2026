**Nombre del proyecto**: Built 4 the streets 

**Género**: Survival / Arcade

**Plataforma**: PC

**Distribución**: Itch.io

**Engine*: Godot 

## Concepto 

Un juego survival arcade en vista isométrica donde el jugador controla una ardilla que debe sobrevivir dentro de un parque urbano buscando comida constantemente.  
La comida es limitada y otros animales también competirán por ella. El jugador deberá robar comida de humanos o animales, buscar restos en la basura y enfrentarse contra otros animales en pequeños combates para sobrevivir el mayor tiempo posible.
El juego tiene un enfoque casual y caótico con una estética low poly  

## Pilares de diseño

- Supervivencia dinámica: El jugador siempre debe sentirse bajo presión para no morir de hambre o quedarse sin vida
- Interacciones caóticas y divertidas: El objetivo es mantener una experiencia ligera y divertida más que realista
- Gameplay simple y rápido: Todas las mecánicas deben de ser fáciles de entender y rápidas de ejecutar.  

## Core Loop

- Explorar el parque    
- Buscar oportunidades de comida    
- Robar o recolectar alimento    
- Evitar o enfrentar animales rivales    
- Recuperar hambre    
- Sobrevivir el mayor tiempo posible
## Mecanicas

Exploracion:
- Movimiento libre en mapa isométrico    
- Parque de tamaño pequeño/mediano    
- Humanos y animales recorren el escenario     

Sistema de Vida y Hambre:
- Barra de vida    
- Barra de hambre/saciedad    

La barra de saciedad disminuye constantemente con el tiempo y si esta llega a 0, la vida empezará a disminuir rápidamente. Si la vida llega a 0 ocurre game over

## Movimiento:

El movimiento se rige por un sistema de stamina, la cual se recarga con el tiempo. Si la stamina llega a cero entras en estado de sobreesfuerzo
- Caminar: Es el movimiento estándar y no gasta stamina. La stamina se recarga de forma normal en este estado    
- Dash: Ayuda a escapar o a llegar a lugares más rápido a cambio de usar mucha stamina
- Correr: Desplazamiento más rápido con la contra de gastar algo de stamina. La stamina no se recarga en este estado
- Sobreesfuerzo: Cuando entras a este estado no te puedes mover, y cambiará hasta que la barra de stamina esté al 100%. La stamina se recarga más rápido en este estado
    
**Nota**: Si el sistema de stamina satura al jugador por ya contar con muchos sistemas , probar usando la barra de hambre/saciedad, y si tampoco funciona, eliminarlo

## Obtención de comida:

La comida se puede obtener de distintas maneras

- Humanos
- Personas caminando que dejan migajas
- Personas que dejan comida en la basura
- Personas estáticas (picnic, sentadas, etc) a las que puedes acercarte y robar comida si no estas en su rango de visión y no te detectan
- Ambiente
- Árboles que cada cierto tiempo sueltan comida
- Animales
- Animales que llevan comida y puedes enfrentar para ganar sus recursos
    
Una vez se obtiene la comida, se quedará en las en manos del jugador hasta que sea consumida, y sólo se puede tener un alimento a la vez
Cada que el jugador o algún animal intenta comer, estarán unos segundos estáticos comiendo, lo que los deja vulnerables a ataques. El alimento se consumirá hasta que pasen los segundos necesarios

## Sistema de Combate:

Cuando dos animales pelean por comida el juego cambia a una arena de combate\
La duración de cada combate es de entre 15-30 segundos

Si el jugador gana
- Obtiene la comida
    
Si el jugador pierde
- Pierde vida
### Animales:

Estos también buscan comida y cada uno tiene características distintas, tanto en combate como en comportamiento

## Estilo Visual

Low Poly

## Audio

La música tendrá un enfoque relajado y caricaturesco para acompañar la exploración y aumentar intensidad durante los combate**