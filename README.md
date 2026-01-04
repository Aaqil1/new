# udemy-dev-withK8s-AWS-codedecode (Monorepo)

This repository consolidates the projects from the GitHub org:
- https://github.com/orgs/udemy-dev-withK8s-AWS-codedecode/repositories

## Layout

- apps/food-delivery-app-fe            # Frontend
- services/                            # Spring Boot microservices
  - eureka-service
  - user-service
  - restaurant-listing-ms
  - food-catalogue-ms
  - order-service
- infra/deployment-folder              # Deployment manifests/scripts
- resources/other-resources            # Course/resources

## Quick start

### Frontend

```bash
cd apps/food-delivery-app-fe
npm install
npm start
```

### A service

```bash
cd services/eureka-service
mvn spring-boot:run
```

## Notes

- This monorepo was created by combining the source repos into one Git repository (nested .git directories removed).
- If you need to preserve each repo\'s git history inside the monorepo, we can re-import using `git subtree`.
