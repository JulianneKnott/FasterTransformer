mkdir ../models/3L_12H_768D_O16
mkdir ../models/3L_8H_256D_O16
python ../make_dummy_models.py
python ../examples/pytorch/gpt/utils/huggingface_gpt_convert.py \
-o ../models/3L_12H_768D_O16-c \
-i ../models/3L_12H_768D_O16 \
-t_g 1 -i_g 1 -p 1 -weight_data_type "fp32"
python ../examples/pytorch/gpt/utils/huggingface_gpt_convert.py \
-o ../models/3L_8H_256D_O16-c \
-i ../models/3L_8H_256D_O16 \
-t_g 1 -i_g 1 -p 1 -weight_data_type "fp32"