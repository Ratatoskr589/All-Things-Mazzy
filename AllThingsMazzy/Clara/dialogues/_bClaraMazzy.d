//SOA Talks
//1st Mazzy Talk after 2nd Clara Banter
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",2)~ THEN MAZZYJ _bClaraMazzyTalk1
@1 /*Clara, please do not take this the wrong way, but sometimes I do not feel that you believe in the necessity of virtuous action.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",3)~
= @2 /*Perhaps you are acting good merely to please us?*/
== _BCLARAJ @3 /*What? No, you're all heroes and I want to be a hero too!*/
= @4 /*We go from place to place helping people and they love us for it! We make lots of money too!*/
= @5 /*Who wouldn't want that?*/
== MAZZYJ @6 /*It is a good life, I will admit, but sometimes one must do the right action even if doing that action would not make one loved and pay no reward.*/
== _BCLARAJ @7 /*Got it! But how do I know what the right action is?*/
== MAZZYJ @8 /*The right action is the one that benefits the most people and causes the least amount of suffering.*/
= @9 /*Let that guide you and you will be as virtuous a hero as any.*/
EXIT

//2nd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",5)~ THEN _BCLARAJ _bClaraMazzyTalk2
@10 /*So Mazzy, you said that the right action is the one that benefits the most amount of people, right?*/
== MAZZYJ @11 /*Yes, that is correct.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",6)~
== _BCLARAJ @12 /*So if a group of people want to take everything from one person, that would be virtuous because there's more of them?*/
== MAZZYJ @13 /*No, it is not virtuous to take what belongs to others.*/
== _BCLARAJ @14 /*But we take other people's stuff constantly; we just kill them first.*/
== MAZZYJ @15 /*We've only killed people in self-defence after they attacked us.*/
== _BCLARAJ @16 /*Yeah, but they only attacked because we invaded their homes. If a bunch of armed lunatics came charging into your city and broke into your house, wouldn't you attack them?*/
== MAZZYJ @17 /*You are speaking of the caves, forests, and dungeons we explore and the monsters that we kill there? They are evil.*/
== _BCLARAJ @18 /*But how do we know that they're evil? It's not like we ever talk to them, and we certainly never leave them alone, even when they ask us to.*/
= @19 /*We go where we want, kill whom we want, and take what we want because we're stronger and they're weaker. How is that virtuous?*/
== MAZZYJ @20 /*I did not expect this discussion to become so complicated.*/
== _BCLARAJ @21 /*That's because you never consider the chance that you might be wrong.*/
EXIT

//3rd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",8)~ THEN MAZZYJ _bClaraMazzyTalk3
@22 /*Clara, I have been thinking, and you may have a point about the moral ambiguity of our violent actions.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",9)~
== _BCLARAJ @23 /*That's a lot of words just to say I'm right.*/
== MAZZYJ @24 /**sigh* Very well. Tell me, Clara, what is virtuous?*/
== _BCLARAJ @25 /*Virtue is staying home and minding your own business.*/
== MAZZYJ @26 /*But what about all the people who need our help?*/
== _BCLARAJ @27 /*What about them? Half the time they're lying to us. They're too weak to fight their own battles, so they ask us to fight instead because we're strong and naive.*/
= @28 /*They say, "My brother stole my gem," when really the gem was never theirs. They say, "Gnolls are attacking my farm," when really that land belonged to the gnolls first."*/
= @29 /*And then we go in and kill everyone, and they say, "Oh you're so amazing, thank you heroes! Keep all the money of the people you killed as a reward!"*/
= @30 /*So the weak liars we help get what they want, we collect no reward from the liars because it makes us seem even more virtuous, but we still get rich because we loot the dead. And that makes us heroes.*/
= @31 /*Well, Mazzy, we're not! We're just like all the other horrible people in this miserable world!*/
== MAZZYJ @32 /*I... I am not sure what you would have us do.*/
== _BCLARAJ @33 /*I don't know! Just stop being so self-righteous about everything!*/
= @34 /*You're not a better person than everyone else; you're just better at killing than they are.*/
== MAZZYJ @35 /*And when I win and they're dead, I get to call myself a hero? Is that it?*/
== _BCLARAJ @36 /*Yup. Everyone is the hero of their own story.*/
== MAZZYJ @37 /*I do not agree with you, Clara, but... I cannot say with precision which part of your argument is incorrect.*/
= @38 /*So let us continue on our path.*/
EXIT

//4th Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",11)~ THEN MAZZYJ _bClaraMazzyTalk4
@39 /*Clara, you should not use your body to manipulate the men around you.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",12)~
== _BCLARAJ @40 /*Another lecture? Very well, Mazzy, tell me how I should behave in your perfect fantasy world.*/
== MAZZYJ @41 /*The physical act of love is a wonderful experience involving willing participants that leads to the pleasure of both parties.*/
== _BCLARAJ @42 /**laughs* I'm sorry, but what in the gods...?*/
== MAZZYJ @43 /*Yet when you find a man who is clearly interested in you and pretend to show him interest in return, it is unfair to him and potentially dangerous.*/
== _BCLARAJ @44 /*Unfair to HIM? POTENTIALLY dangerous?*/
= @45 /*Men have desired me for most of my life. They did not care what I wanted and they were ALWAYS dangerous.*/
= @46 /*Now, after years and years, I've finally figured out how to take that unwanted attention and turn it to my benefit and you lecture me about love and caring and mutual respect?*/
= @47 /*What makes you think I have ever come within a thousand leagues of those?*/
== MAZZYJ @48 /*Well... I...*/
== _BCLARAJ @49 /*You live inside a storybook, Mazzy. The rest of us have to live here, in reality.*/
= @50 /*And in the real world we all use the tools we have to survive.*/
EXIT

//4A - If Married Cor - optional
CHAIN IF WEIGHT #-1 ~Global("_bMCLoveTalk","GLOBAL",2) Global("_bClaraAndCor","GLOBAL",1)~ THEN MAZZYJ _bClaraMazzyTalk4A
@51 /*What about Lord Cor Delryn? You're married now and he seems to care for you. Surely you must have had some loving physical connection?*/
DO ~SetGlobal("_bMCLoveTalk","GLOBAL",3)~
== _BCLARAJ @52 /*Hah! Cor only cares about trying to plant a new son and heir inside of me.*/
= @53 /*Our nights are never about me; he could replace me with anyone.*/
EXIT

//4B - if married Anomen - optional
CHAIN IF WEIGHT #-1 ~Global("_bMCLoveTalk","GLOBAL",2) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN MAZZYJ _bClaraMazzyTalk4B
@54 /*What about Anomen? You're married now and he seems to care for you. Surely you must have had some loving physical connection?*/
DO ~SetGlobal("_bMCLoveTalk","GLOBAL",3)~
== _BCLARAJ @55 /*Anomen is in love with his noble wife: Caroline Aurora Lucia Rosena Silvershield Delryn. If I were Clara-the-Thief or Clara-the-Farmer, would he still have me? How about Clara-the-Whore?*/
= @56 /*I created a woman for him to love and when they are together, she acts exactly how he expects her to act.*/
== MAZZYJ @57 /*But *you* are Caroline Aurora Lucia Rosena Silvershield Delryn. You are the woman he fell in love with.*/
== _BCLARAJ @58 /*Hah, you think awfully highly of a man who hates you. Look into my eyes and tell me, in all honesty, that you truly believe, in your heart, that Anomen would still love me if I were no one at all.*/
== MAZZYJ @59 /*Oh very well, you are completely correct. But how will anyone truly love you if you never allow them to see who you really are?*/
EXIT


//5th Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",14)~ THEN MAZZYJ _bClaraMazzyTalk5
@60 /*Clara, I apologize for earlier. May I tell you a story?*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",15)~
== _BCLARAJ @61 /*A story?*/
== MAZZYJ @62 /*Yes. About me.*/
== _BCLARAJ @63 /*Fine. But you start telling me how to live my life again and I'm gone.*/
== MAZZYJ @64 /*When I was a young woman, about your age, I indeed lived in the perfect world.*/
= @65 /*My parents were caring, my friends were plentiful, I always had shelter and food, and my... um... intimate relations were always mutually satisfying.*/
= @66 /*I vaguely knew that there was evil in the world, and I had experienced some loss... The first and only boy I had lain with had been killed by bandits a couple of years previously.*/
= @67 /*I was determined to make the world a better place, so I went to war; a young and idealistic halfling girl surrounded mostly by humans.*/
= @68 /*A couple of older female soldiers took me under their wing. They protected me so that I could learn how to interact with other soldiers and safely deflect the attentions of the men.*/
= @69 /*Until we sacked a town and my comrades killed, raped, and pillaged the townsfolk while my friends, the women I looked up to, tortured an old man to find his gold.*/
== _BCLARAJ @70 /*Typical. And?*/
== MAZZYJ @71 /*And they wouldn't stop, so I killed them... I saved the old man and his granddaughter.*/
== _BCLARAJ @72 /*And so little Mazzy learned the world was terrible. Then why are you always so insufferable?*/
== MAZZYJ @73 /*Because the world can be evil, but it can also be full of love and hope. And we are the ones who create the world in which we live.*/
EXIT

//Last Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",17)~ THEN _BCLARAJ _bClaraMazzyTalk6
@74 /*Mazzy, it wasn't just you who had an idyllic childhood.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",18)~
= @75 /*I had a good life. My parents loved me. We were happy!*/
== MAZZYJ @76 /*May I ask what happened?*/
== _BCLARAJ @77 /*The world happened, Mazzy. And I grew up.*/
EXIT


//TOB Talks
//1st Mazzy Talk after 2nd Clara Banter
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",2)~ THEN MAZZY25J _bClaraMazzyTalk1
@1 /*Clara, please do not take this the wrong way, but sometimes I do not feel that you believe in the necessity of virtuous action.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",3)~
= @2 /*Perhaps you are acting good merely to please us?*/
== _BCLA25J @3 /*What? No, you're all heroes and I want to be a hero too!*/
= @4 /*We go from place to place helping people and they love us for it! We make lots of money too!*/
= @5 /*Who wouldn't want that?*/
== MAZZY25J @6 /*It is a good life, I will admit, but sometimes one must do the right action even if doing that action would not make one loved and pay no reward.*/
== _BCLA25J @7 /*Got it! But how do I know what the right action is?*/
== MAZZY25J @8 /*The right action is the one that benefits the most people and causes the least amount of suffering.*/
= @9 /*Let that guide you and you will be as virtuous a hero as any.*/
EXIT

//2nd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",5)~ THEN _BCLA25J _bClaraMazzyTalk2
@10 /*So Mazzy, you said that the right action is the one that benefits the most amount of people, right?*/
== MAZZY25J @11 /*Yes, that is correct.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",6)~
== _BCLA25J @12 /*So if a group of people want to take everything from one person, that would be virtuous because there's more of them?*/
== MAZZY25J @13 /*No, it is not virtuous to take what belongs to others.*/
== _BCLA25J @14 /*But we take other people's stuff constantly; we just kill them first.*/
== MAZZY25J @15 /*We've only killed people in self-defence after they attacked us.*/
== _BCLA25J @16 /*Yeah, but they only attacked because we invaded their homes. If a bunch of armed lunatics came charging into your city and broke into your house, wouldn't you attack them?*/
== MAZZY25J @17 /*You are speaking of the caves, forests, and dungeons we explore and the monsters that we kill there? They are evil.*/
== _BCLA25J @18 /*But how do we know that they're evil? It's not like we ever talk to them, and we certainly never leave them alone, even when they ask us to.*/
= @19 /*We go where we want, kill whom we want, and take what we want because we're stronger and they're weaker. How is that virtuous?*/
== MAZZY25J @20 /*I did not expect this discussion to become so complicated.*/
== _BCLA25J @21 /*That's because you never consider the chance that you might be wrong.*/
EXIT

//3rd Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",8)~ THEN MAZZY25J _bClaraMazzyTalk3
@22 /*Clara, I have been thinking, and you may have a point about the moral ambiguity of our violent actions.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",9)~
== _BCLA25J @23 /*That's a lot of words just to say I'm right.*/
== MAZZY25J @24 /**sigh* Very well. Tell me, Clara, what is virtuous?*/
== _BCLA25J @25 /*Virtue is staying home and minding your own business.*/
== MAZZY25J @26 /*But what about all the people who need our help?*/
== _BCLA25J @27 /*What about them? Half the time they're lying to us. They're too weak to fight their own battles, so they ask us to fight instead because we're strong and naive.*/
= @28 /*They say, "My brother stole my gem," when really the gem was never theirs. They say, "Gnolls are attacking my farm," when really that land belonged to the gnolls first."*/
= @29 /*And then we go in and kill everyone, and they say, "Oh you're so amazing, thank you heroes! Keep all the money of the people you killed as a reward!"*/
= @30 /*So the weak liars we help get what they want, we collect no reward from the liars because it makes us seem even more virtuous, but we still get rich because we loot the dead. And that makes us heroes.*/
= @31 /*Well, Mazzy, we're not! We're just like all the other horrible people in this miserable world!*/
== MAZZY25J @32 /*I... I am not sure what you would have us do.*/
== _BCLA25J @33 /*I don't know! Just stop being so self-righteous about everything!*/
= @34 /*You're not a better person than everyone else; you're just better at killing than they are.*/
== MAZZY25J @35 /*And when I win and they're dead, I get to call myself a hero? Is that it?*/
== _BCLA25J @36 /*Yup. Everyone is the hero of their own story.*/
== MAZZY25J @37 /*I do not agree with you, Clara, but... I cannot say with precision which part of your argument is incorrect.*/
= @38 /*So let us continue on our path.*/
EXIT

//4th Mazzy Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",11)~ THEN MAZZY25J _bClaraMazzyTalk4
@39 /*Clara, you should not use your body to manipulate the men around you.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",12)~
== _BCLA25J @40 /*Another lecture? Very well, Mazzy, tell me how I should behave in your perfect fantasy world.*/
== MAZZY25J @41 /*The physical act of love is a wonderful experience involving willing participants that leads to the pleasure of both parties.*/
== _BCLA25J @42 /**laughs* I'm sorry, but what in the gods...?*/
== MAZZY25J @43 /*Yet when you find a man who is clearly interested in you and pretend to show him interest in return, it is unfair to him and potentially dangerous.*/
== _BCLA25J @44 /*Unfair to HIM? POTENTIALLY dangerous?*/
= @45 /*Men have desired me for most of my life. They did not care what I wanted and they were ALWAYS dangerous.*/
= @46 /*Now, after years and years, I've finally figured out how to take that unwanted attention and turn it to my benefit and you lecture me about love and caring and mutual respect?*/
= @47 /*What makes you think I have ever come within a thousand leagues of those?*/
== MAZZY25J @48 /*Well... I...*/
== _BCLA25J @49 /*You live inside a storybook, Mazzy. The rest of us have to live here, in reality.*/
= @50 /*And in the real world we all use the tools we have to survive.*/
EXIT

//4A - If Married Cor - optional
CHAIN IF WEIGHT #-1 ~Global("_bMCLoveTalk","GLOBAL",2) Global("_bClaraAndCor","GLOBAL",1)~ THEN MAZZY25J _bClaraMazzyTalk4A
@51 /*What about Lord Cor Delryn? You're married now and he seems to care for you. Surely you must have had some loving physical connection?*/
DO ~SetGlobal("_bMCLoveTalk","GLOBAL",3)~
== _BCLA25J @52 /*Hah! Cor only cares about trying to plant a new son and heir inside of me.*/
= @53 /*Our nights are never about me; he could replace me with anyone.*/
EXIT

//4B - if married Anomen - optional
CHAIN IF WEIGHT #-1 ~Global("_bMCLoveTalk","GLOBAL",2) Global("_bAnomenClaraRomance","GLOBAL",2)~ THEN MAZZY25J _bClaraMazzyTalk4B
@54 /*What about Anomen? You're married now and he seems to care for you. Surely you must have had some loving physical connection?*/
DO ~SetGlobal("_bMCLoveTalk","GLOBAL",3)~
== _BCLA25J @55 /*Anomen is in love with his noble wife: Caroline Aurora Lucia Rosena Silvershield Delryn. If I were Clara-the-Thief or Clara-the-Farmer, would he still have me? How about Clara-the-Whore?*/
= @56 /*I created a woman for him to love and when they are together, she acts exactly how he expects her to act.*/
== MAZZY25J @57 /*But *you* are Caroline Aurora Lucia Rosena Silvershield Delryn. You are the woman he fell in love with.*/
== _BCLA25J @58 /*Hah, you think awfully highly of a man who hates you. Look into my eyes and tell me, in all honesty, that you truly believe, in your heart, that Anomen would still love me if I were no one at all.*/
== MAZZY25J @59 /*Oh very well, you are completely correct. But how will anyone truly love you if you never allow them to see who you really are?*/
EXIT


//5th Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",14)~ THEN MAZZY25J _bClaraMazzyTalk5
@60 /*Clara, I apologize for earlier. May I tell you a story?*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",15)~
== _BCLA25J @61 /*A story?*/
== MAZZY25J @62 /*Yes. About me.*/
== _BCLA25J @63 /*Fine. But you start telling me how to live my life again and I'm gone.*/
== MAZZY25J @64 /*When I was a young woman, about your age, I indeed lived in the perfect world.*/
= @65 /*My parents were caring, my friends were plentiful, I always had shelter and food, and my... um... intimate relations were always mutually satisfying.*/
= @66 /*I vaguely knew that there was evil in the world, and I had experienced some loss... The first and only boy I had lain with had been killed by bandits a couple of years previously.*/
= @67 /*I was determined to make the world a better place, so I went to war; a young and idealistic halfling girl surrounded mostly by humans.*/
= @68 /*A couple of older female soldiers took me under their wing. They protected me so that I could learn how to interact with other soldiers and safely deflect the attentions of the men.*/
= @69 /*Until we sacked a town and my comrades killed, raped, and pillaged the townsfolk while my friends, the women I looked up to, tortured an old man to find his gold.*/
== _BCLA25J @70 /*Typical. And?*/
== MAZZY25J @71 /*And they wouldn't stop, so I killed them... I saved the old man and his granddaughter.*/
== _BCLA25J @72 /*And so little Mazzy learned the world was terrible. Then why are you always so insufferable?*/
== MAZZY25J @73 /*Because the world can be evil, but it can also be full of love and hope. And we are the ones who create the world in which we live.*/
EXIT

//Last Talk
CHAIN IF WEIGHT #-1 ~Global("_BMazzyClara","GLOBAL",17)~ THEN _BCLA25J _bClaraMazzyTalk6
@74 /*Mazzy, it wasn't just you who had an idyllic childhood.*/
DO ~SetGlobal("_BMazzyClara","GLOBAL",18)~
= @75 /*I had a good life. My parents loved me. We were happy!*/
== MAZZY25J @76 /*May I ask what happened?*/
== _BCLA25J @77 /*The world happened, Mazzy. And I grew up.*/
EXIT

