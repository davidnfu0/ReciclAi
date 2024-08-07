#!/bin/bash

# Verifica que se haya proporcionado la carpeta de origen
if [ -z "$1" ]; then
  echo "Uso: $0 /ruta/a/la/carpeta"
  exit 1
fi

# Dirección de la carpeta de origen
SOURCE_DIR=$1
DATASET_DIR="../datasets/classification"

# Crear directorios de destino
mkdir -p $DATASET_DIR/{train,val,test}

# Crear un array para los nombres de las clases
declare -a CLASS_NAMES

# Función para copiar imágenes a las subcarpetas correspondientes
copy_images_and_log() {
  local label=$1
  local class_index=$2
  local files=("$SOURCE_DIR/$label"/*)
  local train_count=$(( ${#files[@]} * 70 / 100 ))
  local val_count=$(( ${#files[@]} * 20 / 100 ))

  mkdir -p "$DATASET_DIR/train/$class_index.$label"
  mkdir -p "$DATASET_DIR/val/$class_index.$label"
  mkdir -p "$DATASET_DIR/test/$class_index.$label"

  for ((i=0; i<${#files[@]}; i++)); do
    if [ $i -lt $train_count ]; then
      cp "${files[$i]}" "$DATASET_DIR/train/$class_index.$label/"
    elif [ $i -lt $(($train_count + $val_count)) ]; then
      cp "${files[$i]}" "$DATASET_DIR/val/$class_index.$label/"
    else
      cp "${files[$i]}" "$DATASET_DIR/test/$class_index.$label/"
    fi
  done
}

# Procesar cada carpeta de label y agregar el nombre de la clase
class_index=0
for dir in "$SOURCE_DIR"/*/; do
  label=$(basename "$dir")
  CLASS_NAMES+=("$label")
  copy_images_and_log "$label" $class_index
  class_index=$((class_index + 1))
done

echo "Dataset structure for classification created successfully."
