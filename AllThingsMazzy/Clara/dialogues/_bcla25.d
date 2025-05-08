
// After Clara is summoned via Fate Spirit.

BEGIN _bcla25

//if you saved her in SOA or New Game
APPEND _bcla25 IF ~Global("ClaraSummoned","GLOBAL",2) OR(2) Global("_bClaraLives","GLOBAL",3) !Dead("OHHFAK")~ THEN _bcs1
SAY @1 /*<CHARNAME>, what are you doing here? For that matter, what am *I* doing here and where is here anyway?*/
	++ @2 /*This is my pocket plane and you're here because I want us to travel together again.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs2 
	++ @3 /*All you need to know is that it's time to fall in line and follow me.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs3
	++ @4 /*I just couldn't bear to travel without you, Clara. You brighten my day.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs4
	++ @5 /*Sorry, Clara. I changed my mind. Just wait here for now.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs5
	END
	
	IF ~~ THEN _bcs2
	SAY @6 /*You say that like it's supposed to make sense, <CHARNAME>, but I know that I'll find out what you mean eventually. Let's get going.*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs3
	SAY @7 /*Direct and to the point as ever, <CHARNAME>, but that's why I like you. Let's go!*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs4
	SAY @8 /*Aww, that's sweet, <CHARNAME>. I enjoy your company as well. Onward then!*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs5
	SAY @9 /*You're just going to leave me here? That's not very nice.*/ 
	= @10 /*But I guess I'll wait. It doesn't look like I have much other choice.*/
	IF ~~ THEN DO ~MoveToPointNoInterrupt([1702.1755]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	END
END

//If you didn't save her in SOA
APPEND _bcla25 IF ~Global("ClaraSummoned","GLOBAL",2) !Global("_bClaraLives","GLOBAL",3) Dead("OHHFAK")~ THEN _bcs6
SAY @11 /*What? Where am I? Who are you? You look familiar but I can't really remember... it all feels like a bad dream.*/
	++ @12 /*Congratulations you've been conscripted. I hope you have some useful skills.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs7
	++ @13 /*We traveled together briefly and I need your help again.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs8
	++ @14 /*I don't know what I was thinking. I'll summon someone else.*/ DO ~SetGlobal("ClaraSummoned","GLOBAL",3)~ GOTO _bcs9
	END
	
	IF ~~ THEN _bcs7
	SAY @15 /*I mean, I guess so. I'm so confused.*/
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs8
	SAY @17 /*It was <CHARNAME>, wasn't it? I think I do remember. Maybe you can tell me more.*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs9
	SAY @18 /*You're just going to leave me here? That's not very nice.*/
	IF ~~ THEN DO ~MoveToPointNoInterrupt([1702.1755]) Face(0)~ EXIT // This is where she'll wait for PC in the Pocket Plane.
	END
END


//If she's never joined your party and she's waiting
APPEND _bcla25 IF ~Global("ClaraSummoned","GLOBAL",3)~ THEN _bcs10
SAY @20 /*Oh, <CHARNAME>. You're back. Can I travel with you now?*/
	++ @21 /*Yes, Clara. Come with me.*/ GOTO _bcs11
	++ @22 /*Sorry. I don't need you yet.*/ GOTO _bcs12
	END
	
	IF ~~ THEN _bcs11
	SAY @23 /*You're serious? Oh, thank god. Let's get out of here.*/ 
	IF ~~ THEN DO ~SetGlobal("_bClaraJoinedTOB","GLOBAL",1) JoinParty()~ EXIT
	END

	IF ~~ THEN _bcs12
	SAY @24 /*Seriously? Fine then. Just leave me here to starve.*/ 
	IF ~~ THEN EXIT 
	END
END

