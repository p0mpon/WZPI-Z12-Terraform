variable "file_count" {}
resource "local_file" "files" {
  count = var.file_count
  content = "Plik nr ${count.index}"
  filename = "plik_${count.index}.txt"
}
