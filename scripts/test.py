from ultralytics import YOLO

models_path = 'models/'
model_path = models_path + 'v8n.pt'

model = YOLO("yolov8n-cls")
model.train(data='datasets/classification_prim', epochs=1)
results = model.predict(source='2', show=True, conf=0.5)
