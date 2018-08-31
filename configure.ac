##########################################################################
# License header                                                         #
##########################################################################

###########################################################
# Template for a Frama-C plug-in following good practices #
###########################################################

# USAGE
# =====
#
# - Replace all occurrences of 'skeleton' with your plug-in's short name
#   (in lowercase)
# - Add plug-in dependencies (plugin_use/plugin_require), one per line
#
# See README.md for more details

m4_define([plugin_file],Makefile.in)

m4_define([FRAMAC_SHARE_ENV],
          [m4_normalize(m4_esyscmd([echo $FRAMAC_SHARE]))])

m4_define([FRAMAC_SHARE],
          [m4_ifval(FRAMAC_SHARE_ENV,[FRAMAC_SHARE_ENV],
                                     [m4_esyscmd(frama-c -print-path)])])

m4_ifndef([FRAMAC_M4_MACROS], [m4_include(FRAMAC_SHARE/configure.ac)])

# Plug-in short name below
check_plugin(skeleton,PLUGIN_RELATIVE_PATH(plugin_file),
             [support for skeleton plug-in],yes)

# Examples of plug-in dependencies (uncomment and modify if needed):
#
# plugin_require(skeleton,value_analysis)
# plugin_use(skeleton,rtegen)


#######################
# Generating Makefile #
#######################

write_plugin_config(Makefile)
