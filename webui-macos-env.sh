#!/bin/bash
####################################################################
#                          macOS defaults                          #
# Please modify webui-user.sh to change these instead of this file #
####################################################################

export install_dir="$HOME"
export COMMANDLINE_ARGS="--skip-torch-cuda-test --upcast-sampling --no-half-vae --use-cpu interrogate"
export PYTORCH_ENABLE_MPS_FALLBACK=1

if [[ "$(sysctl -n machdep.cpu.brand_string)" =~ ^.*"Intel".*$ ]]; then
    export TORCH_COMMAND="pip install torch==2.1.2 torchvision==0.16.2"
else
    export TORCH_COMMAND="pip install torch==2.3.1 torchvision==0.18.1"
fi

####################################################################

# Kane modifications
export COMMANDLINE_ARGS="$COMMANDLINE_ARGS --ckpt-dir /Users/kane/Documents/Stable-Diffusion/models/ckpt"
export COMMANDLINE_ARGS="$COMMANDLINE_ARGS --embeddings-dir /Users/kane/Documents/Stable-Diffusion/models/embeddings"
export COMMANDLINE_ARGS="$COMMANDLINE_ARGS --lora-dir /Users/kane/Documents/Stable-Diffusion/models/lora"
export COMMANDLINE_ARGS="$COMMANDLINE_ARGS --vae-dir /Users/kane/Documents/Stable-Diffusion/models/vae"
export SADTALKER_CHECKPOINTS="/Users/kane/Documents/Stable-Diffusion/models/sadtalker"
