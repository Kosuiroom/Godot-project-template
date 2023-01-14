# Event bus for distant nodes to communicate using signals.
# This is intended for cases where connecting the nodes directly creates more coupling
# or increases code complexity substantially.
extends Node

#You just need three steps to create or implement this pattern.
#
#    1.Create a new script that extends the node class, and define one or more signals on it.
#    2.In the Project Settings, navigate to the Autoloads tab and register your new script as an auto-loaded node.
#    3.Connect another node to the Events singleton via code like you would with any other: Events.connect("signal_name", self, "_on_Events_signal_name").
#
#From any script in your project, you can then write Events.emit_signal() to emit the corresponding signal.
