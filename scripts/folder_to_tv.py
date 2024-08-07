import torchvision as tv

def folder_to_tv(folder: str) -> tv.datasets.ImageFolder:
    """
    Load images from a folder into a PyTorch dataset.
    """
    dataset = tv.datasets.ImageFolder(
        root=folder,
        transform=tv.transforms.ToTensor()
    )
    return dataset
