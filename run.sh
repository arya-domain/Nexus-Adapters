export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=
export WANDB_MODE=offline
export MODEL_DIR="runwayml/stable-diffusion-v1-5"
export Condition="Canny"
export OUTPUT_DIR="Results/Result_$Condition" 

python train_1.5.py \
    --pretrained_model_name_or_path=$MODEL_DIR \
    --output_dir=$OUTPUT_DIR \
    --dataset_name=fusing/fill50k \
    --mixed_precision="fp16" \
    --resolution=512 \
    --learning_rate=1e-5 \
    --max_train_steps=200000 \
    --validation_steps=1000 \
    --train_batch_size=2 \
    --gradient_accumulation_steps=4 \
    --seed=42 
