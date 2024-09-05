# Script de Información del Sistema

Este script en Bash está diseñado para mostrar información detallada sobre el sistema en el que se ejecuta. A continuación, se proporciona una descripción de lo que hace cada sección del script.

## Requisitos

- Sistema operativo Linux
- Acceso a una terminal

## Descripción del Script

El script realiza las siguientes acciones:

1. **Encabezado**:
   - Muestra un encabezado artístico con el nombre del creador (`ivaeiro`).

2. **Sistema Operativo**:
   - Muestra información general del sistema operativo mediante el comando `uname -a`.

3. **Distribución de Linux**:
   - Verifica la disponibilidad del comando `lsb_release` y, si está disponible, muestra la información de la distribución de Linux.

4. **Versión del Kernel**:
   - Muestra la versión del núcleo del sistema con `uname -r`.

5. **Tiempo de Actividad del Sistema**:
   - Muestra el tiempo que el sistema ha estado en funcionamiento utilizando el comando `uptime`.

6. **Espacio en Discos**:
   - Muestra el uso del espacio en disco con `df -h`.

7. **Detalles de los Discos**:
   - Muestra los detalles de los discos con el comando `lsblk`.

8. **Información de la Red**:
   - Muestra la información de la red con `ip a`.

9. **Conexiones de Red**:
   - Muestra las conexiones de red activas con `ss -tuln`.

10. **Información del CPU**:
    - Muestra el nombre del modelo y la arquitectura del CPU con `lscpu`.

11. **Memoria RAM**:
    - Muestra el uso de la memoria RAM con `free -h`.

12. **Top 5 Procesos por Uso de CPU**:
    - Muestra los 5 procesos que más CPU están utilizando.

13. **Top 5 Procesos por Uso de RAM**:
    - Muestra los 5 procesos que más memoria RAM están utilizando.

14. **Puertos Abiertos**:
    - Muestra los puertos abiertos con `netstat -tulpn`.

15. **Usuarios Conectados**:
    - Muestra los usuarios actualmente conectados con `who`.

## Ejecución

Para ejecutar el script, sigue estos pasos:

1. Guarda el script en un archivo, por ejemplo `infosys.sh`.
2. Asigna permisos de ejecución al archivo:

   ```bash
   chmod +x infosys.sh
3. Ejecuta el script:
   ```bash
   ./infosys.sh
