(**************************************************************************)
(*  License header          *)
(**************************************************************************)

include
  Plugin.Register
    (struct
       let name = "Skeleton"
       let shortname = "skeleton"
       let help = "Just a template for a Frama-C plug-in."
     end)

module Enabled =
  False
    (struct
      let option_name = "-skeleton"
      let help = "Runs the plug-in, printing a message"
     end)
