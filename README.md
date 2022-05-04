# Yolov5-eggs

[![No Maintenance](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)
[![build passing](https://img.shields.io/static/v1?label=build&message=passing&color=green)](https://github.com/Go-Autonomous/mime-parser)

This project is a fork of the awesome [yolov5](https://github.com/ultralytics/yolov5) from Glenn Jocher which is implemented in PyTorch, with added files from [ByteTrack](https://github.com/ifzhang/ByteTrack) (in the object-tracker folder). I have used this for counting eggs in a video for easter; 

<p align="center"><img src="https://raw.githubusercontent.com/Hojland/yolov5-eggs/master/assets/eggs-prior.gif" width="500"/></p>

### Yolov5 

I trained the model using the guidelines given by the yolov5 repository, see their tutorials here:

<summary>Tutorials</summary>

- [Train Custom Data](https://github.com/ultralytics/yolov5/wiki/Train-Custom-Data)  🚀 RECOMMENDED
- [Tips for Best Training Results](https://github.com/ultralytics/yolov5/wiki/Tips-for-Best-Training-Results)  ☘️
  RECOMMENDED
- [Weights & Biases Logging](https://github.com/ultralytics/yolov5/issues/1289)  🌟 NEW
- [Roboflow for Datasets, Labeling, and Active Learning](https://github.com/ultralytics/yolov5/issues/4975)  🌟 NEW
- [Multi-GPU Training](https://github.com/ultralytics/yolov5/issues/475)
- [PyTorch Hub](https://github.com/ultralytics/yolov5/issues/36)  ⭐ NEW
- [TFLite, ONNX, CoreML, TensorRT Export](https://github.com/ultralytics/yolov5/issues/251) 🚀
- [Test-Time Augmentation (TTA)](https://github.com/ultralytics/yolov5/issues/303)
- [Model Ensembling](https://github.com/ultralytics/yolov5/issues/318)
- [Model Pruning/Sparsity](https://github.com/ultralytics/yolov5/issues/304)
- [Hyperparameter Evolution](https://github.com/ultralytics/yolov5/issues/607)
- [Transfer Learning with Frozen Layers](https://github.com/ultralytics/yolov5/issues/1314)  ⭐ NEW
- [Architecture Summary](https://github.com/ultralytics/yolov5/issues/6998)  ⭐ NEW

This project was used because we can gain very fast inference, while also being simple to train and had good performance


### Bytetrack


Then I added the object tracking folder from Bytetrack, which was chosen because I could do simple multiple object tracking by detection with MOTA performance, and therefore not relying on tagging id's of the movements of every object myself. This was easy to use out of the box with any object detection model. ByteTrack has shown good MOTA performance

<p align="center"><img src="https://raw.githubusercontent.com/ifzhang/ByteTrack/main/assets/sota.png" width="500"/></p>

> [**ByteTrack: Multi-Object Tracking by Associating Every Detection Box**](https://arxiv.org/abs/2110.06864)
> 
> Yifu Zhang, Peize Sun, Yi Jiang, Dongdong Yu, Zehuan Yuan, Ping Luo, Wenyu Liu, Xinggang Wang
> 
> *[arXiv 2110.06864](https://arxiv.org/abs/2110.06864)*


The result being 

<p align="center"><img src="https://raw.githubusercontent.com/Hojland/yolov5-eggs/master/assets/eggs-annotated.gif" width="500"/></p>


## How To
First, do 

1. Do annotations in label-studio and export to yolo format

```bash
Make labelstudio
```
2. Create relevant files for yolov5 as specified in the train custom model tutorial
3. Train the model as specified in the tutorial
4. Do detection on your on video by running

```python
python3 detect.py --source <YOUR_VIDEO> --data <YOUR_DATA_SPEC> --weights <YOUR_BEST_TRAINED_WEIGHTS>
```

## Getting Started

### Prerequisites


Dependencies are installed with poetry, which is installed using

``` bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

Most likely you would also like your virtual environment to reside in the project folder, do once as
``` bash
poetry config virtualenvs.in-project true
```

### Installing

Link to your version of python using 
``` bash
poetry env use <python-version>
```

And you can install the dependencies using 
``` bash
poetry install (or update)
```


## Authors

* **Martin Højland** - *Initial work* - [hojland](https://github.com/Hojland)

See also the list of [contributors](https://github.com/Hojland/yolov5-eggs/contributors) who participated in this project.


## Acknowledgments

Big acknowledgements to authors of Yolov5 and ByteTrack