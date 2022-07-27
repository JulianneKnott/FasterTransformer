prefix=/datadrive/jknott

BEAM=1
model=${prefix}/models/benchmark_32_model-c/1-gpu
beam_width=1

inputs=${prefix}/FasterTransformer/J-inputs-8
output_len=8
name=in8_out8
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 8

inputs=${prefix}/FasterTransformer/J-inputs-16
output_len=8
name=in16_out8
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 16

inputs=${prefix}/FasterTransformer/J-inputs-16
output_len=16
name=in16_out16
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 16

inputs=${prefix}/FasterTransformer/J-inputs-128
output_len=8
name=in128_out8
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 128

inputs=${prefix}/FasterTransformer/J-inputs-512
output_len=8
name=in512_out8
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 512

inputs=${prefix}/FasterTransformer/J-inputs-512
output_len=32
name=in512_out32
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 512

# BEAM=4
beam_width=4

inputs=${prefix}/FasterTransformer/J-inputs-8
output_len=8
name=in8_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 8

inputs=${prefix}/FasterTransformer/J-inputs-16
output_len=8
name=in16_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 16

inputs=${prefix}/FasterTransformer/J-inputs-16
output_len=16
name=in16_out16_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 16

inputs=${prefix}/FasterTransformer/J-inputs-128
output_len=8
name=in128_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 128

inputs=${prefix}/FasterTransformer/J-inputs-512
output_len=8
name=in512_out8_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 512

inputs=${prefix}/FasterTransformer/J-inputs-512
output_len=32
name=in512_out32_beam4
bash ${prefix}/FasterTransformer/run_gpt_example.sh $name $model $inputs $beam_width $output_len ${prefix}/models 512
