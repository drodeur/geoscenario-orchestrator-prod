# Geoscenario-Orchestrator-Prod

## Getting started

Install GeoScenario-Orchestrator

```
$ git clone --recurse-submodules https://github.com/drodeur/geoscenario-orchestrator-prod.git
$ cd geoscenario-orchestrator-prod
$ bash geoscenarioserver/scripts/setup-conda-forge-env.bash
```
The script requires an installation of micromamba (recommended) or mamba, follow the instructions to install.
Re-open the terminal if required and run the script again to install the environment `gss`.

Install nodejs and the packages:

```
$ source env_setup.bash
$ micromamba install -y nodejs
...
$ npm i cross-env -g
```

## Start the Orchestrator

Put your template rules in **ManeuverTemplates.json** and run those commands when you want to test your template.

```
source env_setup.bash
cd $ORCHESTRATOR_ROOT
npm start
```

Geoscenario-Orchestrator should start a rule-engine on port 5001 and potentially some on consecutive ports. Geoscenario-Orchestrator shall start GeoscenarioServer when the communication with the required rule-engines are established.