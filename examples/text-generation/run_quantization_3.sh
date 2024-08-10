

 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_measure.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 2 run_lm_eval.py \
-o llama_3-1_8b_bs1_measure.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-8B \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1 



 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_quant.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 2 run_lm_eval.py \
-o llama_3-1_8b_bs1_quant.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-8B \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1

git add .
git commit -m "quantize llama3.1 8b bs 128"
git push


 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_measure.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 4 run_lm_eval.py \
-o llama_3-1_70b_bs1_measure.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-70B \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1 



 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_quant.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 4 run_lm_eval.py \
-o llama_3-1_70b_bs1_quant.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-70B \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1

git add .
git commit -m "quantize llama3.1 70b"
git push


 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_measure.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 4 run_lm_eval.py \
-o llama_3-1_70b_instruct_bs1_measure.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-70B-Instruct \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1 



 USE_INC=0  QUANT_CONFIG=./quantization_config/maxabs_quant.json python ../gaudi_spawn.py \
--use_deepspeed --world_size 4 run_lm_eval.py \
-o llama_3-1_70b_instruct_bs1_quant.txt \
--model_name_or_path meta-llama/Meta-Llama-3.1-70B-Instruct \
--attn_softmax_bf16 \
--use_hpu_graphs \
--trim_logits \
--use_kv_cache \
--bucket_size=128 \
--bucket_internal \
--use_flash_attention \
--flash_attention_recompute \
--bf16 \
--batch_size 1

git add .
git commit -m "quantize llama3.1 70b instruct"
git push


