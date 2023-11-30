on run {input, parameters}
	set pythonScriptPath to "YOUR ncm2mp3.py FILE PATH"
	set argument to item 1 of input
	try
		set resultText to do shell script "python3 " & pythonScriptPath & " " & quoted form of argument
		return resultText
	on error errMsg
		return "Error: " & errMsg
	end try
end run
