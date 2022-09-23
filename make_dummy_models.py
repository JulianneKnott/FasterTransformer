from transformers import GPT2Model, GPT2Config

config1 = GPT2Config(vocab_size=50257, n_positions=16, n_embd=768, n_layer=3, n_head=12)
model1 = GPT2Model(config1)
model1.save_pretrained("../models/3L_12H_768D_O16")

config2 = GPT2Config(vocab_size=50257, n_positions=16, n_embd=256, n_layer=3, n_head=8)
model2 = GPT2Model(config2)
model2.save_pretrained("../models/3L_8H_256D_O16")