## Architecture
- EKS for container orchestration
- RDS for database
- ALB for traffic routing
- Terraform for infrastructure

## Environments
- Dev (auto deploy)
- Staging (manual approval)
- Prod (restricted)

## CI/CD
- GitHub Actions builds and deploys
- OIDC used for secure AWS access

## Deployment Strategy
- Rolling deployment
- Health checks enabled
- Rollback via previous image

## Database
- RDS with automated backup
- Snapshot before release

## Monitoring
- CloudWatch alerts
- Health endpoints

## Security
- Private subnet for compute
- Secrets managed securely