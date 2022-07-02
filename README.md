# Godot-project-template
 Project template meant for kosuiroom game projects with all generic managers and project structure


 # How to dialogic set name oh character from variable

 If all you need to do is change the name, you can do that easily right now; in the name field of dialogic's character editor, put that name as dialogic definition, ex [npc_name] and, of course, add a definition for npc_name. Invoke it with false:

Dialogic.set_variable('npc_name', 'Jane Doe')
Dialogic.start('your_chat_here', false) # Critical!  Otherwise the var
