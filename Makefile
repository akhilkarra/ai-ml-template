# If CONDA variable is not defined, create it
CONDA?=${CONDA_PREFIX}
env_name = ai-ml-template
python_version = 3.11.5

env:
	conda create --name $(env_name) python=$(python_version) && \
	. ${CONDA}/etc/profile.d/conda.sh && \
	conda activate $(env_name)

clean:
	conda remove --name $(env_name) --all