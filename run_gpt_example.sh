name="$1"; shift
model="$1"; shift
input="$1"; shift
beam="$1"; shift
output_len="$1"; shift
vm_path="$1"; shift
input_len="$1"; shift

head_num=12

cd /datadrive/jknott/FasterTransformer/build

./bin/gpt_gemm 1 $beam $input_len $head_num 64 3072 50257 1 1

python ../examples/pytorch/gpt/gpt_example.py \
--layer_num 12 \
--output_len $output_len \
--head_num $head_num \
--size_per_head 64 \
--vocab_size 50257 \
--beam_width $beam \
--top_p 0.9 \
--ckpt_path $model \
--max_batch_size 1 \
--max_seq_len 1024 \
--data_type 'fp16' \
--sample_input_file $input \
--iterations 1000 \
--vocab_file $vm_path/gpt2-vocab.json \
--merges_file $vm_path/gpt2-merges.txt \
--time > ../$name

# nsys profile -o ../$name \
# python ../examples/pytorch/gpt/gpt_example.py \
# --layer_num 12 \
# --output_len $output_len \
# --head_num $head_num \
# --size_per_head 64 \
# --vocab_size 50257 \
# --beam_width $beam \
# --top_p 0.9 \
# --ckpt_path $model \
# --max_batch_size 1 \
# --max_seq_len 1024 \
# --data_type 'fp16' \
# --sample_input_file $input \
# --iterations 1 \
# --vocab_file $vm_path/gpt2-vocab.json \
# --merges_file $vm_path/gpt2-merges.txt \
# --time
