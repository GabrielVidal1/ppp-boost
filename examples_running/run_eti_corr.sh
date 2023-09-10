export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export INSTANCE_DIR="./dataset/backpack_dog"
export OUTPUT_DIR="./exps/yc_coarse_inversion"

ppp_train --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --placeholder_tokens="<yc>" \
  --use_template="object" \
  --do_coarse_inversion=True \
  --preserve_prefix=True \
  --max_train_steps_ti=300 \
  --lr_scheduler="constant" \
  --leap_model_path="./models/leap_ti_2.0_sd2.1_beta.ckpt"