# Terraform Installation Guide

## 1. Download Terraform
1. Go to the official Terraform releases page:  
   👉 [https://developer.hashicorp.com/terraform/downloads](https://developer.hashicorp.com/terraform/downloads)
2. Choose the correct package for your operating system (Windows, macOS, or Linux).
3. Download the `.zip` file.

---

## 2. Unzip the Package
Extract the downloaded file to get the `terraform` executable.

### Example:
```bash
unzip terraform_*.zip
```

## 3. Move Terraform to Your PATH

1. Move the binary to a directory that’s in your system’s PATH

#### macOS / Linux OS

##### Example:
```bash
sudo mv terraform /usr/local/bin/
```

#### Windows
 - Move terraform.exe to a folder like C:\terraform.
 - Add that folder to your system PATH:
 - Open System Properties → Environment Variables.
 - Edit the Path variable and add C:\terraform.

## 4. Verify Installation
  Run this in your terminal or command prompt:
  ``` bash
terraform -version
```
You should see the installed Terraform version.

