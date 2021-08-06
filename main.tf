provider "google" {
  project = "teak-formula-319719"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "sm-codefresh-instance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-9-stretch-v20210701"
    }
  }

  network_interface {
    network = "default"
  }
}


