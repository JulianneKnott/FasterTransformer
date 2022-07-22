name="$1"; shift
model="$1"; shift
input="$1"; shift
beam="$1"; shift
output_len="$1"; shift
input_len="$1"; shift

cd /datadrive/jknott/FasterTransformer/build

./bin/gpt_gemm 1 $beam $input_len 32 64 2048 51200 1 1

python ../examples/pytorch/gpt/gpt_example.py \
--layer_num 24 \
--output_len $output_len \
--head_num 32 \
--size_per_head 64 \
--vocab_size 51200 \
--beam_width $beam \
--top_p 0.9 \
--ckpt_path $model \
--max_batch_size 1 \
--max_seq_len 32 \
--data_type 'fp16' \
--sample_input_file $input \
--iterations 100 \
--time > ../$name

nsys profile -o ../$name \
python ../examples/pytorch/gpt/gpt_example.py \
--layer_num 24 \
--output_len $output_len \
--head_num 32 \
--size_per_head 64 \
--vocab_size 51200 \
--beam_width $beam \
--top_p 0.9 \
--ckpt_path $model \
--max_batch_size 1 \
--max_seq_len 32 \
--data_type 'fp16' \
--sample_input_file $input \
--iterations 1 \
--time
