Assign contributor access of all apps to a single service prinicpal by running the following command for that app.

`az ad sp create-for-rbac --name "e2eTestServicePrincipal" --role contributor --scopes /subscriptions/bef29afb-3c08-4894-ae64-43bdd8f3f447/resourceGroups/e2e-test-apps/providers/Microsoft.Web/sites/<appName> --sdk-auth`

This is the service principal creds in the Github repo.
