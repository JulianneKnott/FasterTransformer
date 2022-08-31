prefix=/datadrive/jknott

model=${prefix}/models_gpt/hf_gpt_32_model_fp32-c/1-gpu
beam_width=4

input_len=16

inputs=${prefix}/FasterTransformer/F-inputs-$input_len
output_len=16
name=in16F_out16_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt $input_len

inputs=${prefix}/FasterTransformer/F-inputs-$input_len
output_len=8
name=in16F_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt $input_len

input_len=128
inputs=${prefix}/FasterTransformer/F-inputs-$input_len
output_len=8
name=in128F_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt $input_len
