
import {
 # ID of the cloud resource
 # Check provider documentation for importable resources and format
 id = "i-00dc8304c6f8f7ea7"
 # Resource address
 to = aws_instance.this
}

import {
 # ID of the cloud resource
 # Check provider documentation for importable resources and format
 id = "366140438193-bastion-bucket"
 # Resource address
 to = aws_s3_bucket.this
}