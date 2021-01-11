# docker run --gpus all -it --rm -v `pwd`:/scratch --user $(id -u):$(id -g) stylegan2ada:latest bash -c \
#     "(cd /scratch && DNNLIB_CACHE_DIR=/scratch/.cache python3 generate.py generate-images \
#     --trunc=0.8  --seeds=3875451-3876000 \
#     --outdir=out --network=checkpoints/network-snapshot-000088.pkl)"

# docker run --gpus all -it --rm -v `pwd`:/scratch --user $(id -u):$(id -g) stylegan2ada:latest bash -c \
#     "(cd /scratch && DNNLIB_CACHE_DIR=/scratch/.cache python3 generate.py lerp-video \
#     --trunc=0.8  --seeds=1234 --duration-sec=10 \
#     --outdir=out --network=checkpoints/network-snapshot-000088.pkl)"

docker run --gpus all -it --rm -v `pwd`:/scratch --user $(id -u):$(id -g) stylegan2ada:latest bash -c \
    "(cd /scratch && DNNLIB_CACHE_DIR=/scratch/.cache python3 generate.py generate-latent-walk \
    --trunc=0.8  --seeds=6340302,2605682,9712254,6887584,3232650,2578323,788510,507126,7716653,3499786,371876 --frames=990 --fps=30\
    --outdir=out --network=checkpoints/network-snapshot-000088.pkl)"
