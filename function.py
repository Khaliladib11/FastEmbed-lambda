from fastembed.embedding import FlagEmbedding as Embedding
from typing import List
import numpy as np

def load_model(path="fast-bge-base-en"):
    embedding_model = Embedding(cache_dir=path, max_length=512)
    return embedding_model


def handler(event, context):
    model = load_model()
    return event

