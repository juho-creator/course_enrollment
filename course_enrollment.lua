-- 현재 마우스 커서위치 저장 (수강신청 버튼)
function get_position()
  x,y = GetMousePosition()
  OutputLogMessage("Mouse is at %d, %d\n", x, y)
  return x,y
end


-- 저장된 위치로 이동 (수강신청 버튼)
function course_enrollment(x,y)
  MoveMouseTo(x, y)
end



function OnEvent(event, arg)
  -- Print current event and button name
  OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
  
  -- Get current cursor position when middle button is pressed
  if (arg == 9) then
    x,y = get_position()
  end
  
  if (arg == 2) then
    course_enrollment(x,y)
  end    
end
