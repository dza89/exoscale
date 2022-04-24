provider "aws" {

  endpoints {
    s3 = "https://sos-de-fra-1.exo.io"
  }

  region     = "de-fra-1"

  #access_key = "my-access-key"
  #secret_key = "my-secret-key"

  # Skip AWS validations
  skip_credentials_validation = true
  skip_get_ec2_platforms      = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  skip_region_validation      = true

}

terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
    }
  }
}

provider "exoscale" {
}