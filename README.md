# Nexus Adapters: Efficient Text-Guided Convolutional Adapter for the Diffusion Model [WACV 2026]

<div style="background-color: white; padding: 20px; display: inline-block;">
  <img src="assets/model.png" alt="Model Architecture" style="background-color: white;">
</div>

## Abstract

We introduce **Nexus Adapters**, novel text-guided efficient adapters for structure-preserving conditional generation using diffusion models. Existing approaches require redundant parameters and lack prompt awareness, making them computationally expensive.

## Key Contributions

- **Nexus Prime**: Efficient adapter with only 8M additional parameters (vs T2I-Adapter baseline)
- **Nexus Slim**: Lightweight variant with 18M fewer parameters than T2I-Adapter while maintaining state-of-the-art performance
- Cross-attention mechanisms for rich multimodal conditioning
- Superior understanding of input prompts while preserving structural information

## Features

- Text-guided structure-preserving conditional generation
- Parameter-efficient design for resource-constrained environments
- Cross-modal attention for better prompt-structure alignment
- State-of-the-art performance on structure-conditional image generation

## How to Run

### Image Generation

Use the `infer_image.ipynb` notebook for image generation with text-guided structural conditioning:

1. Open `infer_image.ipynb` in Jupyter
2. Follow the notebook cells to load the model and generate images
3. Provide text prompts and structural inputs (sketches/depth maps)
4. View generated outputs

### Training

Run the training script:

```bash
python train_1.5.py
```

Or use the provided shell script:

```bash
bash run.sh
```

## Project Structure

- `infer_image.ipynb` - Image generation and inference
- `train_1.5.py` - Training script
- `run.sh` - Execution script
- `models/adapter.py` - Adapter architecture
- `models/pipeline.py` - Diffusion pipeline
- `assets/` - Model images and resources
