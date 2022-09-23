prefix=/datadrive/jknott

input_len=16
inputs=${prefix}/FasterTransformer/F-inputs-$input_len
output_len=16
layer_num=3

# MODEL 1
head_num=12
model_dim=768
model=${prefix}/FasterTransformer/models/${layer_num}L_${head_num}H_${model_dim}D_O${output_len}-c/1-gpu

beam_width=8
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=16
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=32
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=64
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

# MODEL 2
head_num=8
model_dim=256
model=${prefix}/FasterTransformer/models/${layer_num}L_${head_num}H_${model_dim}D_O${output_len}-c/1-gpu

beam_width=8
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=16
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=32
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim

beam_width=64
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ${prefix}/FasterTransformer/run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ${prefix}/models_gpt \
    $input_len $head_num $layer_num $model_dim
