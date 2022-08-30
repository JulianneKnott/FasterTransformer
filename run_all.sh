prefix=/datadrive/jknott

model=${prefix}/FasterTransformer/models/hf_gpt_32_model_fp32-c/1-gpu
beam_width=4

inputs=${prefix}/FasterTransformer/F-inputs
output_len=8
name=in16F_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/FasterTransformer/models 16

inputs=${prefix}/FasterTransformer/F-inputs
output_len=16
name=in16F_out16_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/FasterTransformer/models 16
