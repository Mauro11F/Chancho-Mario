# 🐷 Chancho Mario — Juego de Plataformas 2D en Godot 4

> Un pequeño juego de plataformas hecho en Godot 4 siguiendo un tutorial, ideal para aprender las bases del desarrollo de videojuegos en 2D.

Puedes probarlo en la demo que logre subir en **itchio.io** --> [https://mauroh33.itch.io/html-test2]

![screenshot](https://user-images.githubusercontent.com/tu-captura-aqui.gif) <!-- Puedes subir un GIF o imagen en GitHub y pegar el link -->

## 🎮 Características del Juego

Chancho Mario es una demo jugable que incluye las mecánicas básicas de un juego de plataformas clásico:

- ✅ **Movimiento 2D fluido** (izquierda, derecha)
- 🐷 **Script de salto personalizado** con detección de suelo
- ✨**Sistema de recolección de ítems** (puntaje)
- 🕹️ **Animaciones sincronizadas** con los inputs (caminar, saltar, idle)
- 🧱 **Nivel de ejemplo** con colisiones configuradas
- 🎯 **Interfaz de usuario (GUI)** que muestra el puntaje en pantalla
- 🎨 **Diseño simple y limpio**, ideal para aprender cómo estructurar escenas y nodos en Godot 4

---

## 📷 Capturas

| Gameplay | GUI Score |
|---------|-----------|
| ![gif1](https://tu-imagen-o-gif-aqui) | ![gif2](https://otra-imagen-o-gif) |

---

## 🛠️ Cómo Ejecutarlo

1. Clona o descarga este repositorio.
2. Abre el proyecto desde **Godot 4.x**.
3. Ejecutá la escena principal (`Menu.tscn` o directamente `Level.tscn`).
4. ¡Jugá y explorá el código!

```bash
git clone https://github.com/Mauro11F/Chancho-Mario
```
---

## 🚀 ¿Qué Podés Aprender con Este Proyecto?

1. Manejo de nodos (`KinematicBody2D`, `TileMap`, `CanvasLayer`, etc.)
2. Conexión entre señales y scripts
3. Control de física para plataformas
4. Uso de animaciones y `AnimationPlayer`
5. Diseño modular de niveles
6. Interfaz de usuario (HUD) con `Label` y lógica de puntaje

---

## 📂 Estructura del Proyecto

```bash
chancho-mario/
│
├── Assets/
|    ├── Audio/                 # Audios del juego
|    ├── Characters/
|    |    ├── Player/           # Sprites de animaciones del personaje
|    |    |    ├── Dead/
|    |    |    ├── Run/
|    |    |    ├── .../
|    |    ├── Enemies/
|    |    |    ├── Enemy01/     # Sprites de las animaciones del enemigo
|    |    |    ├── Spike/       # Animaciones de las trampas
|    ├── Collectibles/
|    |    ├── Coins/            # Sprites de la moneda
|    |    ├── EffectsCoins/     # Efecto de recoger moneda
|    ├── Enviroment/
|    |    ├── background01/     # Contenido del Parallax Background
|    |    ├── ground/           # El png del terreno utilizado en el tilemap
|    |    ├── stage_objects/    # Objetos del escenario (Palmeras, vegetacion, etc)
|    ├── GUI/                   # Elementos Banner del menu
|    ├── Scripts/               # Scripts de todos los objetos
|    ├── Setting/               # background y temas
|    |    ├── Font/             # Fuentes utilizadas
├── Scenes/                     # Escenas de todos los objetos
└── README.md
```

---

## 🙌 Créditos

Este proyecto fue realizado siguiendo un tutorial de Godot 4. 
Algunas ideas y recursos fueron adaptados y modificados para practicar el desarrollo de videojuegos 2D.

---

## 🧠 Nota final

Este proyecto fue y es una excelente base para expandir y construir un juego de plataformas. 
¡Animate a agregar enemigos, niveles, power-ups y más! eres libre de clonarlo, modificarlo a tu antojo y por que no monetizar con el.

Puedes probarlo en la demo que logre subir en **itchio.io** --> [https://mauroh33.itch.io/html-test2]
