# ---------------------- UV - Project Management

# Installing uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# or
wget -qO- https://astral.sh/uv/install.sh | sh

# Verify
uv --version

# Upgrading uv
uv self update

# Installing a specific version
uv python install 3.12

# Creating a new virtual environment
uv venv
# or
uv venv --python 3.12

# Activate the virtual environment
source .venv/bin/activate

# Deactivating virtual environments
deactivate

# Install Python packages
uv pip install <package name>

# Upgrade all uv-managed Python versions
uv python upgrade

# Running a Python script
uv run main.py

# Viewing Python installations
uv python list

# Project initialization
uv init

  # Application project (default)
  uv init --app

  # Library project
  uv init --lib

# Managing dependencies (add, remove, sync)

  # Add package
  uv add pandas

  # Remove package
  uv remove pandas

# Sync environment to match pyproject + lock file
uv sync

# Lock dependencies
uv lock

  # Upgrade a specific dependency to the latest compatible version
  uv lock upgrade numba

# Show dependencies
uv tree

# Run Python
uv run python

# Run script
uv run script.py

  # Run a standalone script with temporary ad-hoc dependencies
  uv run --with pandas script.py

# List installed tools
uv tool list

# Upgrade installed tools
uv tool upgrade --all

# Installing tools globally
uv tool install black

# Uninstall a tool
uv tool uninstall black

# Wipe everything
uv cache clean

# Safely safely free up disk space (recommended)
uv cache prune

# Building package
uv build

# Publishing to PyPI
uv publish

# | Command / Concept     | Description                                                    |
# | --------------------- | ---------------------------------------------------------------|
# | `uv init`             | Initialise a new Python project (app or library).              |
# | `uv run`              | Run a Python file inside the project’s virtual environment.    |
# | `uv add`              | Add one or more dependencies and install them.                 |
# | `uv remove`           | Remove a dependency and update `pyproject.toml`.               |
# | `uv sync`             | Sync environment to match declared dependencies & lock file.   |
# | `uv lock`             | Generate or update the lock file.                              |
# | `uv lock upgrade`     | Upgrade a specific dependency to its latest compatible version.|
# | `uv tree`             | Show the full dependency tree.                                 |
# | `uv python list`      | List all Python versions detected by `uv`.                     |
# | `uv python install`   | Install a specific Python version.                             |
# | `uvx`                 | Run Python CLI tools in isolated environments (pipx‑like).     |
# | `uv tool install`     | Install a CLI tool managed by `uv`.                            |
# | `uv tool uninstall`   | Uninstall a CLI tool.                                          |
# | `uv tool list`        | List installed CLI tools.                                      |
# | `uv tool update shell`| Update shell configuration / PATH for tools.                   |
# | `uv publish`          | Publish a Python package to PyPI or another index.             |

# ---------------------- UVX - Running Python CLI tools

# Run CLI temporarily - launch an interactive PySpark shell
uvx pyspark

uvx pyspark@3.5.3
# or
uvx pyspark@4.0.0

# Pinning Python Versions (uvx --python <version> <tool>)
uvx --python 3.12 pyspark

# Run PySpark REPL with Delta Lake dependencies
uvx --with delta-spark pyspark

# Pass arguments
uvx --from pyspark python script.py

# Format Python code with Black
uvx black main.py
uvx black --line-length 88 script.py

# Add temporary dependency (uvx --with package tool)
uvx --with pandas --with numpy --with scikit-learn pyspark

# Run package with different executable (uvx --from package executable)
uvx --from pyspark spark-submit script.py
uvx --from pyspark --with pandas --with pyarrow --with delta-spark spark-submit script.py

# Environment variable passthrough
export JAVA_HOME=/usr/lib/jvm/java-11
uvx --from pyspark spark-submit script.py

# Spin up a local Jupyter Notebook environment bundled with pandas, matplotlib, numpy, and scikit-learn
uvx --with pandas --with matplotlib --with numpy --with scikit-learn jupyter notebook
