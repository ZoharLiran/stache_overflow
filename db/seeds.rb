Question.destroy_all
Answer.destroy_all
Qcomment.destroy_all
Acomment.destroy_all

questionseeds =
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

answerCommentSeeds =
["Groomed east european gunslinger basil fawlty",
 "sportacus fox hunting, groomed old west sheriff",
  "vincent price east european basil fawlty top gun",
  "knavish rogue trimmed sportacus elit cunning",
  "like a fox sweat irrigator, gunslinger fox hunting?",
  "Borat magnum pi hair trimmer by jingo. Daniel",
  "plainview old man in pub, Daniel plainview mr ",
  "frothy-top doctor strange lando calrissian borat"]

questionseeds.each do |s|
  question = Question.create(content: s)
  4.times do
    question.qcomments.create(content: answerCommentSeeds.sample)
    answer = question.answers.create(content: answerCommentSeeds.sample)
    2.times do
      answer.acomments.create(content: answerCommentSeeds.sample)
    end
  end
end
