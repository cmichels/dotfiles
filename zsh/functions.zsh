# function brew() {
#   if [[ $1 == "add" ]]; then
#     # Remove the first argument ("add")
#     shift
#     # Install the package
#     command brew install "$@"
#     # Update the global Brewfile
#     command brew bundle dump --global --force
#   else
#     # Call the original brew command with all original arguments
#     command brew "$@"
#   fi
# }


function clone() {
  if [[ -z "$1" ]]; then
    echo "Repository name is required" 
  else
    echo "cloning repo stark-tech-group/$1"
    gh repo clone "stark-tech-group/$1"
  fi
}


function cp_docker() {
    echo "copying docker files";
    /bin/cp ~/projects/tsp/stg-devops-compose/docker-dependencies/* docker/
}

function cp_compose() {
  if [[ -z "$1" ]]; then
    echo "Service name is required" 
  else
    echo "copying docker-compose file for $1";
    /bin/cp ~/projects/tsp/stg-devops-compose/bash/build/$1/* .;
    /bin/cp ~/projects/tsp/stg-devops-compose/bash/build/.env .;
  fi
}

function gcbb() {
  if [[ -z "$1" ]]; then
    echo "Branch name is required" 
  else
    echo "creating branch $1";
    git checkout -b bug/$1;
  fi
}
function gcbf() {
  if [[ -z "$1" ]]; then
    echo "Branch name is required" 
  else
    echo "creating branch $1";
    git checkout -b feature/$1;
  fi
}
