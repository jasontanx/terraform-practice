provider "google" {
  project = var.project_id
  credentials = "${file("keys.json")}"
  region  = "asia-southeast1"
}

resource "google_bigquery_dataset" "dataset2_tf" {
  dataset_id  = "dataset_2"
  description = "This dataset is for practicing terraform - using variables"
  location    = var.region

  labels = {
    environment = "default"
  }
}

resource "google_bigquery_table" "table2_tf" {
  dataset_id = google_bigquery_dataset.dataset2_tf.dataset_id
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
    },
    {
      name = "var3"
      type = "DATETIME"
    }
  ])
  labels = {
    environment = "default"
  }
}




