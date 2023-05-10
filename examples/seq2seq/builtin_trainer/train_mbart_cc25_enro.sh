python finetune_trainer.py \
    --model_name_or_path=facebook/mbart-large-cc25 \
    --data_dir $ENRO_DIR \
    --output_dir mbart_cc25_enro --overwrite_output_dir \
    --learning_rate=3e-5 \
    --warmup_steps 500 \ 
    --fp16 \
    --label_smoothing 0.1 \
    --adam_eps 1e-06 \
    --src_lang en_XX --tgt_lang ro_RO \
    --freeze_embeds \
    --per_device_train_batch_size=4 --per_device_eval_batch_size=4 \
    --max_source_length 128 --max_target_length 128 \
    --val_max_target_length 128 --test_max_target_length 128 \
    --sortish_sampler \
    --num_train_epochs 6 \
    --save_steps 25000 --eval_steps 25000 --logging_steps 1000 \
    --do_train --do_eval --do_predict --evaluate_during_training \
    --predict_with_generate --logging_first_step 
    --task translation \
    "$@"