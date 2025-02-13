# Geoscenario-Orchestrator-Prod

## Getting started

Install Geoscenarioserver

```
git clone https://github.com/rodrigoqueiroz/geoscenarioserver.git
conda create -n geoscenario python=3.8
conda activate geoscenario
cd geoscenarioserver
pip3 install -r requirements.txt
```

Install Geoscenario-Orchestrator

```
git clone https://github.com/drodeur/geoscenario-orchestrator-prod.git
curl -sL https://deb.nodesource.com/setup_22.x  | bash -
apt-get -y install nodejs
npm i cross-env -g
```

Define the following in **~/.bashrc**

```
conda activate geoscenario
export ORCHESTRATOR_ROOT=~/ROOT_TO_FOLDER/geoscenario-orchestrator-prod
export SERVER_ROOT=~/ROOT_TO_FOLDER/geoscenarioserver
export VIOLATION_REPORT_FOLDER=$ORCHESTRATOR_ROOT/results
```

## Start the Orchestrator

Put your template rules in **ManeuverTemplates.json** and run those commands when you want to test your template.

```
source ~/.bashrc
cd $ORCHESTRATOR_ROOT
npm start
```

Geoscenario-Orchestrator should start a rule-engine on port 5001 and potentially some on consecutive ports. Geoscenario-Orchestrator shall start GeoscenarioServer when the communication with the required rule-engines are established.