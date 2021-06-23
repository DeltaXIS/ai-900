from azure.cognitiveservices.vision.computervision import ComputerVisionClient
from msrest.authentication import CognitiveServicesCredentials
from pycode import vision
import os

cog_endpoint = os.environ.get('azurecognitiveservicesendpoint')
cog_key = os.environ.get('azurecognitiveserviceskey')

# Get the path to an image file
image_path = "https://media.sciencephoto.com/f0/03/53/55/f0035355-800px-wm.jpg"

# Get a client for the computer vision service
computervision_client = ComputerVisionClient(cog_endpoint, CognitiveServicesCredentials(cog_key))

# Get a description from the computer vision service
image_stream = open(image_path, "rb")
description = computervision_client.describe_image_in_stream(image_stream)

# Display image and caption (code in helper_scripts/vision.py)
vision.show_image_caption(image_path, description)