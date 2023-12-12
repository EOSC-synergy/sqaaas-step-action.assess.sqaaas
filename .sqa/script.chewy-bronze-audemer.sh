# SPDX-FileCopyrightText: Copyright contributors to the Software Quality Assurance as a Service (SQAaaS) project <sqaaas@ibergrid.eu>
#
# SPDX-License-Identifier: GPL-3.0-only

(
cd github.com/EOSC-synergy/sqaaas-step-action &&
    make torch-cpu&&
    make tf-2.13&&
    micromamba run -p ./.venv-pytorch pip install .[dev]&&
    micromamba run -p ./.venv-pytorch pytest -v ./tests/ -m "not slurm"
)