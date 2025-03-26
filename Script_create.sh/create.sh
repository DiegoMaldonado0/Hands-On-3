#!/bin/bash

# Script: create.sh
# Descripción: Crea un archivo, lo mueve a backup, lista contenido y limpia.

# Crear archivo mytext con contenido "Hola Mundo"
echo "Hola Mundo" > mytext
echo "Archivo mytext creado con éxito."

# Mostrar contenido del archivo
echo -e "\nContenido de mytext:"
cat mytext

# Crear directorio backup
mkdir backup
echo -e "\nDirectorio backup creado."

# Mover mytext a backup
mv mytext backup/
echo "Archivo mytext movido a backup."

# Listar contenido de backup
echo -e "\nContenido del directorio backup:"
ls -l backup/

# Eliminar mytext de backup
rm backup/mytext
echo -e "\nArchivo mytext eliminado de backup."

# Eliminar directorio backup (debe estar vacío)
rmdir backup
echo "Directorio backup eliminado."

# Mensaje final
echo -e "\nProceso completado exitosamente."
