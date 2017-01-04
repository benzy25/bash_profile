#!/usr/bin/env bash
GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}| "
GIT_THEME_PROMPT_SUFFIX=" ${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
    PS1="\n${purple}\t ${reset_color} ${cyan}\w ${light_blue}$(scm_prompt_info)\n${reset_color}→ "
}

PROMPT_COMMAND=prompt_command;
