resource "exoscale_sks_cluster" "prod" {
  zone    = local.zone
  name    = "prod"
  version = "1.23.5"
  exoscale_ccm = false
  service_level = starter
}
