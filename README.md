# EV4rent
an WS infra for a EV rental service using a mobile apps 

Project  Blue Horizons 

 a future proof infrastructure and services  for Blue SG  EV on demand rental  Services  

  

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

### Terraform and CloudFormation:
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



