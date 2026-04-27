
The system is designed with the following priorities:

Prevent failures
Minimize production risk
Enable fast recovery
# Why Environment Separation?

Problem:
Single environment caused production failures.

Decision:
Separate Dev, Staging, and Production environments.

Reason:
Ensures testing happens before production release.

# Why CI/CD Automation?

Problem:
Manual deployments caused downtime.

Decision:
Automated pipeline using GitHub Actions.

Reason:
Ensures consistent and repeatable deployments.

# Why Manual Approval for Production?

Problem:
Accidental deployments can break production.

Decision:
Require manual approval before production deployment.

Reason:
Adds a safety checkpoint.

# Why Kubernetes (EKS)?

Decision:
Use Amazon EKS

Reason:

Scalability
Self-healing
Supports rolling deployments
# Why Private Subnet for App & DB?

Problem:
Security risk from public exposure.

Decision:
Keep application and database in private subnets.

Reason:
Reduces attack surface.

# Why RDS for Database?

Decision:
Use Amazon RDS

Reason:

Automated backups
High availability
Managed service reduces operational overhead
# Why Secrets Manager?

Problem:
Sensitive data exposure risk.

Decision:
Use AWS Secrets Manager

Reason:
Secure storage and rotation of secrets.

# Why Rolling Deployment?

Problem:
Downtime during deployments.

Decision:
Use rolling updates.

Reason:
Ensures zero downtime deployment.

# Why Monitoring & Alerts?

Problem:
Issues detected by customers.

Decision:
Use Amazon CloudWatch

Reason:
Detect issues proactively.

# Why Backup Strategy?

Problem:
Risk of data loss.

Decision:
Enable automated backups and snapshots.

Reason:
Ensures recovery capability.

# Trade-offs & Limitations
Separate AWS accounts not used (simplified setup)
Basic monitoring instead of advanced observability stack
Minimal application used (focus on infrastructure)