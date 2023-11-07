# EV4rent : Project  Blue Horizons 
this a POC for building an AWS infra for a EV rental service using a mobile apps 


a future proof infrastructure and services  for Blue SG  EV on demand rental  Services  with has those features : 

* A mobile App connecting to a Service to book cars 
* iOt  data from EV cars  streaming to a Server to collect data and react to any issues the driver might have 
* Aplication access to dev to correct issue and deploy new version of the apps 
* Business intel for stake holders
* Alert for maintenance team
 

Auth : Doan Nguyen
Network and Cloud architect, DEvops , SRE , with Data science and  machine learning specialty 

Date 06 november 2023
Context : job interview



Introduction 

In addressing  an EV rental company   case study, the AWS infrastructure proposed below is designed to be highly available, scalable, secure, and cost-efficient. It supports an  EV rental company  microservices-based core platform, native mobile applications, and a single-page application for backend operations. The design considerations take into account the unique operational landscape of Singapore and the need for regular and rapid deployment of new services.



 Technical Justification and Thought Process  from business goals to a  technically , cost effective , and operational  sound solution within human and cost limits.

My  top down process from business goal to solutions   

1.+ Business needs 
2.+ Functions 
3.+ Available Human , technical and budget resource
4.+ SLO and SLA
5.+ discussion with all involved stake holder 
6.+ Choice and adoption of Solutions 
7.+ poc 
8.+Implementation 
9.+ support process
10.+ training and documentation 
11.+ monitoring tools for measuring Cost , SLO , SLA 
12.+continuous improvement process on SLO , SLA , Cost 
 
13.Back to 1 business change like growth and business goals changes 



Possible Solution

Introducing  EV for All  

 What is it ?  A scalable, resilient architecture with low latency for  a EV rental company  on AWS involves selecting services that offer high availability, fault tolerance, and quick data access. 

Why ? to provide  a Fast , Resilient,  flexbile Scalable and easy to managed systems  , with  possible Future  multibilling and multi account mgt  feaute and Business intel using machine learning and data ETL feature on AWS . 

Where ? : for Blue sg customers and office in SG . and in the future All  customers and office in the ASEAN region ( vietnam , maylasia , japan , koera , indonesia, Australia)

For Who : Blue SG customers , Partners , Blue sg mgt teams, marketing , Sales  and Operations teams ( dev , Devops SRE , Data teams , maintenance Teams, 

How ? 

Here it is 

“Blue  Horizons “ the system that will help blue sg  provide the best EV car rental service  and scale in Asia  and go boldly where no man has gone before .. star trek Trailer 

Blue horizon architecture overview 




 resilient architecture with short latency for  EV rental company   EV management, core platform, and backend operations involves several AWS services working in concert. Here's a high-level overview of the architecture, including the workflow for each platform:

    Architecture components

1.EV Management Platform:


AWS IoT Core: for its ability to handle massive volumes of messages from EVs, ensuring real-time data processing with minimal latency, which is critical for monitoring vehicle status and responding to events.

Amazon Kinesis:  to process large streams of data in real time, which is essential for analyzing EV data for insights and timely decision-making.

AWS Lambda: for  serverless compute capabilities, allowing for event-driven, scalable processing of data and alerts without the need for managing underlying infrastructure.

Amazon SNS: Used for its messaging and mobile notifications, enabling prompt alerts to the operations team about vehicle status or issues.


2.Core Platform/uService/Frontend:

Amazon SQS and SNS: These services decouple microservices, handle message queuing, and facilitate pub/sub patterns, which are essential for reliable, scalable inter-service communication.

Amazon EventBridge: Ideal for event-driven architectures, it allows scheduling and automates triggering of workflows, which is necessary for job scheduling across microservices.


-  AWS Lambda:
-  Serverless Compute : Lambda functions allow you to run code without provisioning or managing servers. This is ideal for event-driven architectures, such as responding to HTTP requests from the mobile app or processing data streams from EVs.
-  Scalability : Automatically scales the compute in response to the number of requests, which is crucial for handling varying loads, such as during peak rental times.
-  Cost-Effectiveness : With Lambda, you pay only for the compute time you consume, which can be more cost-effective than maintaining always-on servers, especially when dealing with unpredictable traffic patterns.
-  Rapid Deployment : Enables quick updates and deployment of new microservices, which supports  EV rental company   need for adding new services regularly within a short timeframe.

-  Amazon ECS/EKS on Fargate:
Why ? 
-  Amazon ECS/EKS on Fargate:
-  Container Management : ECS and EKS provide orchestration services that are essential for managing containerized microservices, allowing  a EV rental company  to deploy, manage, and scale applications.

-  Serverless Containers : Fargate is a serverless compute engine for containers, removing the need to provision and manage servers and letting you focus on designing and building your applications.

-  Security : Fargate provides task-level isolation, improving the security posture of your applications. Each task runs in its own isolated environment, reducing the risk of interference from other tasks.

-  Consistent Performance : With Fargate, you can specify and pay for resources per application, which ensures consistent performance and is ideal for latency-sensitive applications like  EV rental company   EV management and rental systems.

-  Simplified Operations : Fargate removes the need to manage the underlying infrastructure, simplifying operations and maintenance, which is beneficial for  EV rental company   SRE team to focus on more critical tasks like observability and reliability.


3.Backend Operations:

- Amazon Cognito            : For secure user authentication for the internal SPA  Single Page App
- API Gateway            : To provide a flexible API layer for the SPA to interact with backend services.
- Amazon CloudFront            : To deliver the SPA with low latency and high transfer speeds.

Connectivity & Networking:

- AWS Route 53  : for fail over , low latency on mobiles apps and health check on our apps servers 
- Amazon VPC            : To isolate environments and provide secure networking for AWS resources.
- AWS Direct Connect            : a dedicated network connection from  EV rental company   office to AWS.
- AWS Transit Gateway            : To simplify network architecture, connecting VPCs and on-premises networks.

    Security:
- AWS IAM            : For fine-grained access control to AWS resources.
- AWS WAF and Shield            : For protecting against web exploits and DDoS attacks.
- AWS KMS            : For managing encryption keys for data at rest and in transit.
- VPC Security Groups and NACLs            : For stateful and stateless traffic control.

    SRE Considerations:

       Observability:
- Amazon CloudWatch            : For monitoring and observability of AWS resources and applications.
- AWS X-Ray            : For tracing and analyzing microservices.
- Amazon Elasticsearch Service            : For log analytics and real-time application monitoring.

       SLA/SLO & Key Metrics:

Using Monitoring tools like Prometheus ro have in depth KPI about our Service health .
 
- Availability          : Percentage of uptime and mobile apps connections rejections % 
- Usage 		: Compute CPU MEM usage level  
- Latency            	: Response time for API calls.
- Throughput        : Number of transactions per second.
- Error Rate           : Percentage of failed API requests.

       Support & Troubleshooting tools 
- Ticket system like Jira , xendesk 
- Channel system like Discord , Slack , Mattermost for DEv , devops , maintenance teams 
- AWS CloudTrail            : For governance, compliance, and auditing of AWS account activity.

Budget and Resources tools:
- AWS spots and Reservation plans : to save cost 
- AWS cost explorer , budget             : To follow up optimize  the cost of the architecture.
- DevOps Team            : A team of AWS-certified professionals for implementation and maintenance.

### SIZING ###

Scaling an AWS infrastructure to support 1000 electric vehicles (EVs) and 10,000 users involves selecting the right services and resources to handle the load. Here's a high-level overview of the infrastructure components and the rationale behind each choice:

### EV Management Platform:
- **EC2 Instances**: Use `t3.large` or `m5.large` instances for the application layer, which can handle moderate traffic with the ability to scale. These instances provide a balance between compute, memory, and network resources.
- **RDS Instance**: Choose `db.r5.large` for PostgreSQL, which offers 2 vCPUs and 16 GiB of memory, suitable for high-performance database needs.
- **DynamoDB**: Utilize DynamoDB for high-performance, scalable NoSQL database requirements, with auto-scaling enabled to handle throughput dynamically.

### Core Platform:
- **ECS with Fargate**: Use AWS Fargate for serverless container execution, which abstracts the server management and scales automatically.
- **API Gateway**: Deploy as the front door to handle HTTPS requests from mobile apps, using rate limiting to manage traffic spikes.
- **Lambda**: Implement business logic in a serverless manner, allowing for automatic scaling with the number of requests.

### Backend + Monitoring + Data Analytics:
- **Elasticsearch Service**: For log analytics and real-time monitoring of application performance.
- **CloudWatch**: For basic monitoring, alarms, and to trigger auto-scaling events.
- **Redshift**: For data warehousing and analytics, allowing for complex queries on large datasets.


### deployment using  IAC templates ( terraform or cloudformation ) and CICD git hub actions   

Terraform and CloudFormation:
For each platform, you would create Terraform modules and CloudFormation templates that define the resources needed. These IaC (Infrastructure as Code) scripts would include:

- **VPC configuration**: Subnets, NAT Gateways, Route Tables, Internet Gateways, etc.
- **EC2 Auto Scaling Groups**: To scale the EC2 instances horizontally based on demand.
- **ECS Task Definitions**: For running containerized applications.
- **RDS Instances**: With Multi-AZ deployment for high availability.
- **IAM Roles and Policies**: For secure access management.
- **Security Groups and NACLs**: For network security.
- **API Gateway Resources**: For managing APIs.
- **Lambda Functions**: Including triggers from API Gateway or other AWS services.
- **DynamoDB Tables**: With auto-scaling settings.
- **CloudWatch Alarms and Dashboards**: For monitoring.
- **Elasticsearch Service Setup**: For log analytics.
- **Redshift Clusters**: For data analytics.

The Terraform modules and CloudFormation templates would be parameterized to allow for customization for different environments like UAT, Staging, and Production.

Creating these Terraform and CloudFormation stacks would require detailed knowledge of each service's configuration options and the specific requirements of BlueSG's platforms. The stacks would be tested in a development environment before being deployed to production.

Please note that the actual instance types and sizes, the database classes, and other resources would need to be fine-tuned based on the specific workload characteristics, which would be determined through load testing and performance analysis.


Creating a full Terraform and CloudFormation setup for a company like "EV4rent" is quite extensive and would typically be beyond the scope of a single response. However, I can provide you with a high-level structure and examples for some of the components you've listed. This should give you a good starting point for building out the infrastructure.

### Terraform Structure:

 structure your Terraform configuration for "EV4rent":

```
EV4rent/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── ec2/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── ecs/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── rds/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── iam/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── security/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── api_gateway/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── lambda/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── dynamodb/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── cloudwatch/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── elasticsearch/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── redshift/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

Each module would contain Terraform code specific to that AWS service. For example, the `vpc/main.tf` might look like this:

```hcl
# VPC Module - vpc/main.tf

resource "aws_vpc" "ev4rent_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "ev4rent_vpc"
  }
}

# ... (other resources like subnets, NAT gateways, etc.)
```

And the corresponding `vpc/variables.tf`:

```hcl
# VPC Module - vpc/variables.tf

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
```

### CloudFormation Structure:

For CloudFormation, you might structure your templates similarly, with a main stack that references nested stacks:

```
EV4rent/
├── main-stack.yaml
└── stacks/
    ├── vpc.yaml
    ├── ec2.yaml
    ├── ecs.yaml
    ├── rds.yaml
    ├── iam.yaml
    ├── security.yaml
    ├── api-gateway.yaml
    ├── lambda.yaml
    ├── dynamodb.yaml
    ├── cloudwatch.yaml
    ├── elasticsearch.yaml
    └── redshift.yaml
```

The `main-stack.yaml` would reference other stacks like this:

```yaml
# Main Stack - main-stack.yaml

Resources:
  VPCStack:
    Type: AWS::CloudFormation::Stack
    Properties:
      TemplateURL: ./stacks/vpc.yaml
      Parameters:
        VpcCidr: "10.0.0.0/16"
```

And `stacks/vpc.yaml` might look like this:

```yaml
# VPC Stack - stacks/vpc.yaml

Resources:
  EV4rentVPC:
    Type: "AWS::EC2::VPC"
    Properties: 
      CidrBlock: !Ref VpcCidr
      Tags:
        - Key: "Name"
          Value: "ev4rent_vpc"
```

### Testing and Deployment:

Before deploying these stacks, you would test them in a development environment. You can use Terraform workspaces or CloudFormation stack names to differentiate between environments.

### Parameterization:

For both Terraform and CloudFormation, you would use variables and parameters to customize the stacks for different environments (e.g., UAT, Staging, Production).



### CICD infra deployement using Git hub actions 

Integrating Terraform with a CI/CD workflow using GitHub Actions allows you to automate the deployment and management of your infrastructure. Here's a scenario where we use GitHub Actions to manage the deployment of AWS infrastructure with Terraform.

In the context of the GitHub Actions workflow described, "Whenever a new commit is pushed to the `main` branch" refers to any new commit that is made to the `main` branch of the GitHub repository, regardless of the content. This could be:

- A commit containing application code changes made by a developer.
- A commit containing changes to Terraform configuration files.
- A merge commit from a pull request that includes changes from feature branches.

The CI/CD pipeline does not differentiate between the types of commits; it triggers the workflow for any new commit to the `main` branch. However, in practice, you might want to structure your repositories such that:

- Infrastructure code managed by Terraform is kept in a separate repository or a distinct directory within a repository that contains only Terraform configuration files.
- Application code is kept in a separate repository or directory if it's in the same repository.

This separation helps to manage and maintain clear boundaries between infrastructure and application code changes. It also allows you to set up specific CI/CD workflows for each type of change. For example, you might have one workflow for application code that runs tests and deploys the application, and another workflow for infrastructure code that runs `terraform plan` and `terraform apply`.

If you want to trigger the Terraform workflow only when Terraform files are changed, you can modify the `on` section of the workflow file to include path filters:

```yaml
on:
  push:
    branches:
      - main
    paths:
      - '**.tf'
      - '**.tfvars'
```

With this configuration, the workflow will only run when files with the `.tf` or `.tfvars` extensions are changed, which are typically associated with Terraform configurations.

### Scenario:

Whenever a new commit is pushed to the `main` branch, we want to:

1. Initialize Terraform.
2. Format and validate Terraform code.
3. Plan the Terraform deployment and show the proposed changes.
4. Apply the Terraform deployment automatically if the commit is tagged with a release.

### GitHub Actions Workflow:

Create a `.github/workflows/terraform.yml` file in your repository with the following content:

```yaml
name: 'Terraform CI/CD'

on:
  push:
    branches:
      - main
    tags:
      - 'v*'

jobs:
  terraform:
    name: 'Terraform'
    runs-on: ubuntu-latest

    # Environment variables can be set here or in the GitHub repository settings
    env:
      AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      AWS_DEFAULT_REGION: 'us-east-1'

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v1

      - name: Terraform Initialize
        id: init
        run: terraform init

      - name: Terraform Format
        id: fmt
        run: terraform fmt -check

      - name: Terraform Validate
        id: validate
        run: terraform validate

      - name: Terraform Plan
        id: plan
        run: terraform plan

      # This step will only run if the commit is tagged for release
      - name: Terraform Apply
        if: github.event_name == 'push' && startsWith(github.ref, 'refs/tags/v')
        run: terraform apply -auto-approve
```

### Explanation:

- **on:** This section defines the trigger for the workflow. It will run on pushes to the `main` branch and any tags that start with `v`, which are typically used for versioning releases.

- **jobs:** Defines the job called `terraform` that runs on an Ubuntu latest runner.

- **env:** Sets the environment variables for AWS credentials. These should be stored as secrets in your GitHub repository settings to keep them secure.

- **steps:** The sequence of steps that the job will execute.

  - **Checkout code:** Checks out the repository code so that it can be used by the workflow.
  
  - **Setup Terraform:** Sets up Terraform CLI in the GitHub Actions runner.
  
  - **Terraform Initialize:** Initializes a new or existing Terraform working directory.
  
  - **Terraform Format:** Checks that all Terraform configuration files adhere to a canonical format.
  
  - **Terraform Validate:** Validates the Terraform files for correctness.
  
  - **Terraform Plan:** Creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure.
  
  - **Terraform Apply:** Applies the changes to reach the desired state of the configuration. This step is conditional and only runs if the push event is a tagged commit, which helps prevent unintended deployments.

### Security Considerations:

- Store your AWS credentials (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) as encrypted secrets in your GitHub repository settings.
- Ensure that the IAM user associated with these credentials has the minimum necessary permissions for the actions Terraform needs to perform.
- Review Terraform plans carefully before applying, especially in production environments.
- Consider implementing additional approval steps or manual triggers for sensitive operations.

This workflow provides a basic example of how to integrate Terraform with GitHub Actions for CI/CD. Depending on your organization's needs, you might want to expand this with manual approval steps, more granular triggers, or different workflows for different environments.



### Observability and Monitoring:

For monitoring and observability, you would set up CloudWatch alarms and dashboards using the `cloudwatch` module in Terraform or the `cloudwatch.yaml` stack in CloudFormation. You might also integrate with AWS X-Ray for tracing and AWS Elasticsearch for log analytics.

### Data Analytics:

For data analytics, you would set up an Amazon Redshift cluster using the `redshift` module in Terraform or the `redshift.yaml` stack in CloudFormation, ensuring it's configured to handle the expected data volume and query performance.

### Conclusion:

This modular approach allows for easier management and configuration of the infrastructure. Each module or stack can be developed, tested, and deployed independently, which is particularly useful in a CI/CD pipeline. It also makes the codebase more maintainable and scalable as the company grows.

Please note that the actual implementation would require filling out the details of each module or stack with all the necessary resources and configurations, which would be quite extensive. The examples provided here are simplified and would need to be expanded upon to create a fully functional infrastructure.



