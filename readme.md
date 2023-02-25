## Terraform Project
Terraform is designed to help you manage your infrastructure as code. It is an open-source tool for building, changing, and versioning infrastructure safely and efficiently.
This is a project from Altschool Africa to automate the creation of infrastructure on AWS cloud using terraform and ansible. This project solves the following questions;
- Create three EC2 instances, and put them behind an Elastic Load Balancer
- Upon application of terraform plan, terraform should export the public IP addresses of the three instances to a file called host-inventory
- Maps a custom domain name to AWS route53 within terraform plan
- Create an ansible playbook that uses the host-inventory file terraform created to install Apache, set timezone to Africa/Lagos and displays a simple HTML page that displays content to clearly identify all three EC2 instances.
### Prerequisites
- Terraform installed on your local machine
- Access to a cloud provider (e.g., AWS)
- AWS cloud provider account with the necessary permissions to create resources
### Usage
1. Clone the repository to your local machine
2. Navigate to the project directory
3. Initialize Terraform by running terraform init
4. Review the Terraform configuration files and make any necessary changes
5. Run terraform plan to preview the changes that will be made to your infrastructure
6. If the plan looks good, run terraform apply to apply the changes
7. Monitor the progress of the Terraform apply operation
### Contributions

Contributions to this project are welcome! Please follow the standard Git workflow for submitting changes:
1. Fork the repository
2. Create a new branch for your changes
3. Make your changes and commit them
4. Push your changes to your forked repository
5. Submit a pull request back to this repository
###End
