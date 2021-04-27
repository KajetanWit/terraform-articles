provider "google" {
  credentials = file("path/to/your/secret-account-key-generated-from-gcp.json")
  project     = "id-of-your-project-in-gcp"
  region      = "europe-west3"
  zone        = "europe-west3-c"
}


resource "google_compute_instance" "some_resource_name" {
  name         = "dummy-machine"
  machine_type = "f1-micro"
  zone         = "europe-west3-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

}
