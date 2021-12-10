#######################
### CARTPOLE, SWING 
#######################

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cartpole \
    --task_name swingup \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_static_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cartpole \
    --task_name swingup \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_inv_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cartpole \
    --task_name swingup \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_norm_inv_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30


#######################
### CHEETAH, RUN 
#######################

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_static_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_inv_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30

CUDA_VISIBLE_DEVICES=0 python -u train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type pixel --work_dir ./tmp \
    --action_repeat 8 --num_eval_episodes 10 \
    --pre_transform_image_size 100 --image_size 84 \
    --agent rad_sac --frame_stack 3 --data_augs rand_norm_inv_cutout  \
    --seed 23 --critic_lr 1e-3 --actor_lr 1e-3 --eval_freq 10000 --batch_size 128 --num_train_steps 200000 \
    --save_tb --save_model --min_cut=10 --max_cut=30


#######################
### FINGER, SPIN
#######################


#######################
### WALKER, WALK
#######################


#######################
### CUP, CATCH
#######################
