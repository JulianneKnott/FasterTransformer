batch_size="$1"; shift
beam_size="$1"; shift
output_file="$1"; shift
input_file="$1"; shift

model_type=decoding_ext # 'decoding_ext', 'torch_decoding', or 'torch_decoding_with_decoder_ext'
data_type=fp16; #'fp16' or 'fp32'
if [[ $data_type == fp16 ]]; then
    is_fp16=1
else
    is_fp16=0
head_number=???
size_per_head=???
inter_size=$((4 * $head_number * $size_per_head))
vocab_size=???
seq_len=???
memory_hidden_dim=???


cd /datadrive/jknott/FasterTransformer/build

bash ../examples/pytorch/decoding/utils/download_model.sh

./bin/decoding_gemm \
    $batch_size \
    $beam_size \
    $head_number \
    $size_per_head \
    $inter_size \
    $vocab_size \
    $seq_len \
    $memory_hidden_dim \
    $is_fp16

python ../examples/pytorch/decoding/translate_example.py \
    --batch_size $batch_size \
    --beam_size $beam_size \
    --model_type $model_type \
    --data_type $data_type \
    --output_file $output_file \
    --input_file $input_file