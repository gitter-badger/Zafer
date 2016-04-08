do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
	  send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "YOU ARE SUDO 🤘🏿😎"
    elseif is_admin(msg) then
	  send_document(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
      return "YOU ARE SUPER ADMIN😎"
    elseif is_owner(msg) then
	  send_document(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
      return "YOU ARE OWNER🔝😎"
    elseif is_moderator(msg) then
	  send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "YOU ARE ADMIN"
    elseif is_member(msg) then
	  send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "😂YOU ARE A MEMBER"
    end
  end
end

return {
  patterns = {
    "^[!/#]([Mm]e)$",
    "^([Mm]e)$"
    },
  run = run
}
end

--[[@HackeD_o ??? ??? ??? ??? ???? ?????:)]]