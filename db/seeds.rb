seeds =
["Robert winston hairy kid at school basil fawlty hairy lipsum sterling albert einstein",
"frontiersman, frightfully nice sterling hairy kid at school hairy lipsum basil fawlty",
"robert winston burt reynolds jimi hendrix albert einstein village people frontiersman",
"charming villain albert einstein, blacksmith village people hairy lipsum charming villain",
"albert einstein albert einstein sterling basil fawlty burt reynolds robert winston",
"frightfully nice frontiersman iron tache hairy kid at school jimi hendrix Leonine robot",
"moustache? Middle eastern despot bad guy gentleman, devilish cad bruce forsyth bad guy",
"middle eastern despot helllloooo village people dis glorious facial hair gentleman hairy",
"lipsum, omar sharif lando calrissian village people bruce forsyth dis middle eastern",
"despot devilish cad bad guy helllloooo soup strainer hairy lipsum iron tache dis",
"gentleman glorious facial hair?"]

seeds.each do |s|
  Question.create(content: s)
end