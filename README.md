# morcoreintegration

Note that the project was renamed to 'morcoreintegration' (initially it was 'morcore2ultimo') starting from version 1.9.5.
Therefore, the versions below 1.9.5 has to use the old docker repo wearefrank/morcore2ultimo

## Frank!Console

After deployment the Frank!Console is available on `/iaf/gui`

## Helm values

- image.registry=docker.io
- image.repository=wearefrank/morcoreintegration
- image.tag=latest
- image.pullPolicy=Always
- connections.create=true
- connections.jdbc[0].type=postgresql
- connections.jdbc[0].host=
- connections.jdbc[0].database=
- connections.jdbc[0].username=
- connections.jdbc[0].password=
- ingress.enabled=false
- frank.dtap.stage=ACC
- MorCore.taak.API.root-url=https://mor-core-acc.forzamor.nl/
- Ultimo.ESB.root-url=https://ultimo-env-name.ultimo.net/api/V1/Action/
- frank.credentials.secret=app-secrets
- frank.credentials.key=credentials.properties
- Frank.API.root-url=https://your-frank-domain

### Configure Docusaurus GitHub Pages deployment
1. Navigate to `GitHub -> Repository -> Pages -> Build and deployment` and select `GitHub Actions` from the **source** dropdown.
2. Navigate to `GitHub -> Repository -> Environments` and create a **New Environment** called `github-pages` if it does not exist yet.
3. Enable the "docusaurus-release" job in `.github/workflows/release.yml` by setting "if" to `true`.

## Local Development Docusaurus
1. Navigate to "docusaurus" subfolder.
    ```
    cd ./docusaurus
    ```
2. Install dependencies.
    ```
    npm install
    ```
3. Serve Docusaurus webserver locally.
    ```
    ./node_modules/.bin/docusaurus.cmd start
    ```
    By default it is served at `http://localhost:3000/`.
4. Basic guide on how to use Docusaurus and a styleguide can be found at `./docusaurus/docs/_README.md`.
# Dependencies
## Update Docusaurus dependencies
1. Navigate to the 'docusaurus' subfolder:
    ```
    cd ./docusaurus
    ```
2. Update dependencies:
    ```
    npm i @docusaurus/core@latest @docusaurus/preset-classic@latest @docusaurus/theme-mermaid@latest @docusaurus/module-type-aliases@latest @docusaurus/tsconfig@latest @docusaurus/types@latest
    ```

## Template variables

| Template variable             | Description                                                                                    | Example        |
|-------------------------------|------------------------------------------------------------------------------------------------|----------------|
| `morcore2ultimo`            | The name of the Frank! to be deployed. It's best to keep this inline with the name of the repo | Frank2Skeleton |
| `{{ cookiecutter.instance_name_lc }}`         | Lowercase version of the instance name.                                                        | frank2example  |
| `{{ cookiecutter.configuration_name }}`       | The name of the first configuration (others have to be added manually)                         | Sans           |
