resource "exoscale_sks_cluster" "cluster" {
  zone    = "de-fra-1"
  name    = "cluster"
  version = "1.23.5"
  exoscale_ccm = false
  service_level = "starter"
}
