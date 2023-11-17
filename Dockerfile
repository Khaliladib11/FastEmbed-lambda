FROM public.ecr.aws/lambda/python:3.9

# Set working directory for lambda
WORKDIR ${LAMBDA_TASK_ROOT}

# Copy local directory to container
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# install poetry & generate requirements
RUN python3 -m pip install -r requirements.txt -t ${LAMBDA_TASK_ROOT}

COPY . ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "function.handler" ]