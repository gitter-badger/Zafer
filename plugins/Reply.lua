-- made by { @Mouamle }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "السلام عليكم" -- msg 
rs[1] = "وعليكم السلام" -- reply

ws[2] = "شلونك" -- msg
rs[2] = "الحمد لله بس مشاغيل تعرف بوت وكذا " -- reply

ws[3] = "بوت" -- msg
rs[3] = "عيوني" -- reply

ws[4] = "تحبني" -- msg 
rs[4] = "اكيد" -- reply

ws[5] = "شكد" -- msg 
rs[5] = "0 0^0" -- reply

ws[6] = "مناصير" -- msg
rs[6] = "مطور مالتي فديته هسه يجي " -- reply

ws[7] = "بوت بوت" -- msg
rs[7] = "شلطشت بخرة" -- reply

ws[8] = "فوكاها" -- msg 
rs[8] = "غير انتوا تشلعون الكلب ومن اوكف تحجون عل مناصيري" -- reply

ws[9] = "لا زعلت بعد" -- msg 
rs[9] = "لا حقك علية" -- reply

ws[10] = "لا بعد زعلت" -- msg
rs[10] = "طبك حريشي اتوسل بيك" -- reply

ws[11] = "محمد" -- msg
rs[11] = "يمه هذا كلبي فديته" -- reply

ws[12] = "ترللي" -- msg 
rs[12] = "يمه هذا الروح بدونه ما روح" -- reply

ws[13] = "حسون" -- msg 
rs[13] = "هذا جراره كلبي هذا" -- reply

ws[14] = "هتلي" -- msg 
rs[14] = "فديته لو اندل بيته" -- reply

ws[15] = "جني" -- msg 
rs[15] = "يمه فديته هذا صكار الكل" -- reply

ws[16] = "فوفة" -- msg 
rs[16] = "احلى وحدة بالكروب فديتهة" -- reply

-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		send_large_msg ( R , rs[i] );
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "ALMNASERY" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Mouamle EDITED BY @ALMNASERY" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end