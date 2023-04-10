provider "google" {
  project = "myfirstproject-364809"
  credentials = "${file("keys.json")}"
  region  = "asia-southeast1"
}

resource "google_bigquery_dataset" "dataset_tf" {
  dataset_id  = "dataset_1"
  description = "This dataset is for practicing terraform"
  location    = "asia-southeast1"

  labels = {
    environment = "default"
  }
}

resource "google_bigquery_table" "table_tf" {
  dataset_id = google_bigquery_dataset.dataset_tf.dataset_id
  table_id   = "table_1"
  schema = jsonencode([
    {
      name = "var1"
      type = "STRING"
      mode = "REQUIRED"
    },
    {
      name = "var2"
      type = "INTEGER"
    }
  ])
  labels = {
    environment = "default"
  }
}




