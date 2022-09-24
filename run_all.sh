input_len=16
inputs=../F-inputs-$input_len
output_len=16
layer_num=3

outs=()

# MODEL 1
head_num=12
model_dim=768
model=../models/${layer_num}L_${head_num}H_${model_dim}D_O${output_len}-c/1-gpu

beam_width=8
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=16
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=32
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=64
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

# MODEL 2
head_num=8
model_dim=256
model=../models/${layer_num}L_${head_num}H_${model_dim}D_O${output_len}-c/1-gpu
outs+=($name)

beam_width=8
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=16
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=32
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

beam_width=64
name=${layer_num}L_${head_num}H_${model_dim}D_in${input_len}_out${output_len}_beam${beam_width}
bash ../run_gpt_example.sh \
    $name $model $inputs $beam_width $output_len ../models \
    $input_len $head_num $layer_num $model_dim
outs+=($name)

for n in ${outs[@]} ; do
    echo $n
    tail -n 1 ../$n
done