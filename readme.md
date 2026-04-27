# DevOps Assignment

## Overview
This project demonstrates a production-grade DevOps setup on AWS with a focus on reliability, security, and scalability for a customer-facing application.

---

## Architecture
Detailed architecture and design explanation:
- docs/architecture.md

---

## Key Features
- Environment separation (Development, Staging, Production)
- CI/CD automation with manual approval for production
- Secure infrastructure with private networking
- Database backup and recovery strategy
- Monitoring and alerting system

---

## Application URL

Due to time and cost constraints, public exposure is limited.  
However, the system is designed to support external access via a LoadBalancer.

---

## Documentation
- Architecture: docs/architecture.md  
- Design Decisions: docs/decisions.md  

---

## Production Release Process

Production releases are designed to be safe, controlled, and recoverable.

### Step 1: Code Integration
- Developers push code to GitHub
- CI pipeline runs:
  - Build
  - Unit tests
  - Docker image creation

### Step 2: Artifact Storage
- Docker image is pushed to Amazon Elastic Container Registry (ECR)
- Image is tagged with version (e.g., v1.0, latest)

### Step 3: Deployment to Development
- Application is automatically deployed to Development environment
- Basic validation is performed

### Step 4: Promotion to Pre-Production (Staging)
- Deployment to staging requires controlled promotion
- Full testing is performed:
  - Functional testing
  - Integration testing

### Step 5: Production Approval
- Production deployment requires manual approval
- Ensures human verification before impacting real users

### Step 6: Production Deployment
- Deployment is performed using rolling updates in Amazon EKS
- New pods are gradually introduced
- Old pods are terminated only after new pods are healthy

### Step 7: Health Verification
- Readiness and liveness probes ensure application health
- Traffic is routed only to healthy pods

### Step 8: Monitoring
- Metrics and logs are monitored using Amazon CloudWatch
- Alerts are triggered if anomalies are detected

---

## Failure Handling During Release

- If new deployment fails health checks:
  - Traffic is not routed to new pods
  - Deployment is automatically stopped

### Rollback Strategy
- Revert to previous stable Docker image
- Use Kubernetes rollout undo

---

## Why This Approach?

This process ensures:
- Minimal or zero downtime
- Safe and controlled releases
- Quick rollback in case of failure
- Protection of real customer traffic

---

## Optional Enhancement

Blue-Green deployment can be implemented to switch traffic instantly between old and new versions for safer production releases.

---

## Final Note

This design focuses on preventing failures, enabling safe deployments, and ensuring fast recovery, which are critical for systems handling real customer data.