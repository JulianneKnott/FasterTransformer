
from transformers import GPT2Model, GPT2Config

config = GPT2Config(vocab_size=50257, n_positions=512, n_embd=512, n_layer=6, n_head=32)
model = GPT2Model(config)
model.save_pretrained("/datadrive/jknott/models_gpt/hf-gpt-models/benchmark_in512_enc-dec-eqv")