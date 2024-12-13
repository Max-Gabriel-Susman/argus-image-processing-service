from ultralytics import YOLO

def main():
    print("Argus Image Processing Service initializing...")

    model = YOLO("yolo11n.pt")

    train_results = model.train(
        data="coco8.yaml", 
        epochs=100, 
        imgsz=640,
        device="cpu",
    )

    metrics = model.val()

    results = model("path/to/image.jpg")
    results[0].show()

    path = model.export(format="onnx")

    # we're gonna have to implement a server here eventually to handle requests from the stream engine

    print("Argus Image Processing Service online.")

if __name__ == "__main__":
    main()