terraform {
  required_providers {
      google = {
            source = "hashicorp/google"
	          version = "3.5.0"
		      }
		        }
			}

provider "google" {

  credentials = file("/home/elobejko/downloads/MyProjVM123-9d0d939aebb6.json")

  project = "myprojvm123"
    region  = "us-central1"
      zone    = "us-central1-c"
      }

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  }
  