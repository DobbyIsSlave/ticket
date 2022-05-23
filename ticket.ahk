;시작
F1::

Loop
{
    Doing()
}
return


;종료
F3::

ExitApp
return


;동작 함수
Doing()
{
    ;새로고침 클릭
    ImageSearchAndClick("refresh.bmp", 1348, 550, 1462, 616)
    sleep, 500
    ;자리 클릭
    if (ImageSearchAndClick("chair_on.bmp", 1368, 671, 1446, 794))
    {
        sleep, 300
        if (ImageSearchAndClick("chair_purple.bmp", 107, 387, 1000, 1179))
        {
            sleep, 300
            if (ImageSearchAndClick("chair_purple.bmp", 107, 387, 1000, 1179))
            {
                sleep, 300
                ImageSearchAndClick("next.bmp", 1270, 1148, 1455, 1268)
            }
        }
        else if (ImageSearchAndClick("chair_red.bmp", 107, 387, 1000, 1179))
        {
            sleep, 300
            if (ImageSearchAndClick("chair_red.bmp", 107, 387, 1000, 1179))
            {
                sleep, 300
                ImageSearchAndClick("next.bmp", 1270, 1148, 1455, 1268)
            }
        }
        else if (ImageSearchAndClick("chair_mint.bmp", 107, 387, 1000, 1179))
        {
            sleep, 300
            if (ImageSearchAndClick("chair_mint.bmp", 107, 387, 1000, 1179))
            {
                sleep, 300
                ImageSearchAndClick("next.bmp", 1270, 1148, 1455, 1268)
            }
        }
    }
}

;이미지 서치 후 클릭
ImageSearchAndClick(img, s_x, s_y, e_x, e_y)
{
    ImageSearch, outX, outY, s_x, s_y, e_x, e_y, *30 %img%
    if (ErrorLevel = 0)
    {
        ;msgBox, %img% %outX% %outY%
        MouseClick, , outX, outY
        ;ControlClick, x%outX% x%outY%, 티켓링크 예매 - Work - Microsoft​ Edge
        return true
    }
    else
    {
        return false
    }
}