prefix=/datadrive/jknott

model=${prefix}/models_gpt/benchmark_in512_enc-dec-eqv-c/1-gpu
beam_width=4

inputs=${prefix}/FasterTransformer/F-inputs-512
output_len=8
name=in512F_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt 16

inputs=${prefix}/FasterTransformer/F-inputs-512
output_len=16
name=in512F_out16_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt 16

inputs=${prefix}/FasterTransformer/F-inputs-512
output_len=16
beam_width=32
name=in512F_out16_beam32
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt 16

inputs=${prefix}/FasterTransformer/F-inputs-512
output_len=16
beam_width=64
name=in512F_out16_beam64
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models_gpt 16
