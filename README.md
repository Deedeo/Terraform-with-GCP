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


------------------------------------------------------------------------------------------------------------------------------------------------------
#  Google Cloud Project Setup Guide (CLI)

This guide walks you through setting up your environment, creating a new Google Cloud Platform (GCP) project, and associating it with a billing account using the command-line interface (CLI).

---

##  Step 1: Install the Google Cloud CLI (gcloud)

We use **gcloud CLI** to manage GCP resources via the terminal.

### 🖥️ Installation Instructions

Choose your operating system and follow the official guide to install the gcloud CLI and SDK.

| OS | Installation guide |
|----|-----------------------------|
| **Linux/macOS** | Follow the instructions in the docs [Google Cloud CLI](https://cloud.google.com/sdk/docs/install-sdk#linux) |
| **Windows** | Download and run the interactive installer from the [Cloud SDK download page](https://cloud.google.com/sdk/docs/install). |

---

### 🔑 Initialization and Authentication

After installation, you must initialize the gcloud environment and log in.

**Initialize the SDK**
```bash
gcloud init
```
**Log in to your Google Account**
This command will open a browser window for you to log in
```bash
gcloud auth login
```
**Confirm Authentication**
Verify your logged-in account:
```bash
gcloud auth list
```
## Step 2 Create a New GCP Project:

```bash
# Set a variable for your desired Project ID
PROJECT_ID="your-unique-project-id"

# Set a display name (more flexible than the ID)
PROJECT_NAME="terraforming-in-the-cloud"
```
```bash
gcloud projects create $PROJECT_ID --name="$PROJECT_NAME"
```


## Step 3: Identify and Link a Billing Account

- 1. Find Your Billing Account ID
     ```bash
     gcloud billing accounts list
     ```
- 2. Set the Project ID
     ```bash
     gcloud config set project $PROJECT_ID
     ```
- 3. Link the Billing Account to the Project
  ```bash
  gcloud billing projects link $PROJECT_ID --billing-account $BILLING_ID
  ```
- 4. Verification
     ```bash
     gcloud billing projects describe $PROJECT_ID
     ```

## Step 4: Enable GCP APIs(optional)
```bash
gcloud services enable container.googleapis.com
gcloud services enable compute.googleapis.com
```



