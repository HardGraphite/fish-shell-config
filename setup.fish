#!/usr/bin/fish

## Disable greeting message
set -U fish_greeting

## Choose theme
fish_config theme save 1 # themes/1.theme

## Git prompt
set -U __fish_git_prompt_showdirtystate 1
set -U __fish_git_prompt_showuntrackedfiles 1
set -U __fish_git_prompt_showupstream auto
set -U __fish_git_prompt_showstashstate 1
set -U __fish_git_prompt_showcolorhints 1
set -U __fish_git_prompt_char_cleanstate '✔'
set -U __fish_git_prompt_char_dirtystate '☡'
set -U __fish_git_prompt_char_invalidstate '✗'
set -U __fish_git_prompt_char_stagedstate '∔'
set -U __fish_git_prompt_char_stashstate '⚑'
set -U __fish_git_prompt_char_untrackedfiles '?'
set -U __fish_git_prompt_char_upstream_ahead '↑'
set -U __fish_git_prompt_char_upstream_behind '↓'
set -U __fish_git_prompt_color_branch yellow
