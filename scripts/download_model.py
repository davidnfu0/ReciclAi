# Script para descargar modelos
import torch

# Cambiar nombre del modelos que se desea descargar
model_name = 'yolov5s' 

model = torch.hub.load('ultralytics/yolov5', model_name)

model_path = f'models/{model_name}.pt'
torch.save(model.state_dict(), model_path)

print(f'Modelo {model_name} descargado y guardado en {model_path}')
