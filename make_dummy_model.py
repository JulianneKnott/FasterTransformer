
from transformers import GPT2Model, GPT2Config

config = GPT2Config(vocab_size=51200, n_positions=32, n_embd=2048, n_layer=24, n_head=32)
model = GPT2Model(config)
model.save_pretrained("/datadrive/jknott/FasterTransformer/models/hf-gpt-models/benchmark_32_model")