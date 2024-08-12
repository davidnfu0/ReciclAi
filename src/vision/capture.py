import cv2


class Capture:
    def __init__(self, camera_code: int, image_width: int, image_height: int):
        self.camera = cv2.VideoCapture(camera_code)
        self.image_list = []
        self.prediction_dict = {}
        self.image_width = image_width
        self.image_height = image_height

    def clear_image_list(self):
        self.image_list = []

    def clear_prediction_dict(self):
        self.prediction_dict = {}

    def capture_image(self):
        ret, frame = self.camera.read()
        frame = cv2.resize(frame, (self.image_width, self.image_height))
        self.image_list.append(frame)
        return frame

    def predict_image(self, model):
        for image in self.image_list:
            prediction = model.predict(image)
            self.prediction_dict[image] = prediction
        return self.prediction_dict
