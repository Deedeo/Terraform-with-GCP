 provider "google" {
    region = var.gcp_region
    project = var.gcp_project
   
 }
 data "google_compute_zones" "available" {
}
resource "google_compute_address" "public_ip" {
  name = "apache"
}
resource "google_compute_instance" "web-server" {
  name = "web-server"
  zone = data.google_compute_zones.available.names[0]
  tags = ["gcp-tf"]
  
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
        image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }
  network_interface {
    network = "default"

    access_config {
        nat_ip = google_compute_address.public_ip.address
    }
  }
  metadata_startup_script = file("startup_script.sh")

}
resource "google_compute_firewall" "allow_http" {
  name = "compute-gcf"
  network = "default"

  allow {
    ports = ["80", "22"]
    protocol = "tcp"

  }
  source_tags = ["tcp-rule"]
  target_tags = ["allow-http"]
  priority = 1000
}

output "compute_ip_address" {
    value = google_compute_address.public_ip.address
  
}