#!/bin/bash
cd ~/.local/share
zip -r Terraria_$(date +%Y-%m-%d_%H-%M ).zip Terraria/
huggingface-cli upload --repo-type dataset osbm/terraria-backups Terraria_$(date +%Y-%m-%d_%H-%M ).zip Terraria_$(date +%Y-%m-%d_%H-%M ).zip
