resource "exoscale_sks_cluster" "prod" {
  zone    = de-fra-1
  name    = "prod"
  version = "1.23.5"
  exoscale_ccm = false
  service_level = starter
}
