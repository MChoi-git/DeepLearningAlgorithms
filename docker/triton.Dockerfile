FROM nvcr.io/nvidia/pytorch:23.08-py3

RUN pip install -U --index-url https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/Triton-Nightly/pypi/simple/ triton-nightly

RUN pip install flash-attn --no-build-isolation
