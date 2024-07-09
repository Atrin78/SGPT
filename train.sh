## CIFAR100 classes 20
# python3 main_prompt.py  --pretrained_dir checkpoints/imagenet21k_ViT-B_16.npz --model_type ViT-B_16 \
#           --partition noniid-labeluni --n_parties 100 --beta 0.01 --cls_num 10 --device cuda:0 \
#          --batch-size 40 --comm_round 60  --test_round 50 --sample 0.05 --moment 0.5 --rho 0.9 --alg SGPT\
#         --dataset cifar100 --lr 0.01 --epochs 5 --key_prompt 20 --avg_key\
#         --share_blocks 0 1 2 3 --share_blocks_g 4 5 6 

### CIFAR100 classes 50
python3 main_prompt.py  --pretrained_dir checkpoints/imagenet21k_ViT-B_16.npz --model_type ViT-B_16 \
           --partition noniid-labeluni --n_parties 100 --beta 0.01 --cls_num 50 --device cuda:0 \
          --batch-size 40 --comm_round 60  --test_round 1 --sample 0.05 --moment 0.5 --rho 0.9 --alg SGPT \
         --dataset cifar100 --lr 0.01 --epochs 5 --key_prompt 20 --avg_key\
         --share_blocks 0 1 2 3 4 --share_blocks_g  5 6 

# office dataset
#python3 main_prompt.py  --pretrained_dir checkpoints/imagenet21k_ViT-B_16.npz --model_type ViT-B_16 \
#          --n_parties 4 --cls_num 10 --device cuda:0 \
#         --batch-size 50 --comm_round 40  --test_round 1 --sample 0.5 --rho 0.9 --alg SGPT\
#        --dataset office --lr 0.01 --epochs 5 --key_prompt 4 --avg_key --moment 0 \
#        --share_blocks 0 1 2 3 4 --share_blocks_g   5 6 --tta