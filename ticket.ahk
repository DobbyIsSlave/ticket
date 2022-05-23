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
    ImageSearchAndClick("refresh.bmp", 915, 370, 978, 408)
    sleep, 500
    ;자리 클릭
    if (ImageSearchAndClick("chair_on.bmp", 935, 444, 977, 520))
    {
        sleep, 500
        if (ImageSearchAndClick("chair_purple.bmp", 28, 230, 713, 791))
        {
            sleep, 500
            if (ImageSearchAndClick("chair_purple.bmp", 28, 230, 713, 791))
            {
                sleep, 500
                ImageSearchAndClick("next.bmp", 880, 805, 969, 847)
            }
        }
        else if (ImageSearchAndClick("chair_red.bmp", 28, 230, 713, 791))
        {
            sleep, 500
            if (ImageSearchAndClick("chair_red.bmp", 28, 230, 713, 791))
            {
                sleep, 500
                ImageSearchAndClick("next.bmp", 880, 805, 969, 847)
            }
        }
        else if (ImageSearchAndClick("chair_mint.bmp", 28, 230, 713, 791))
        {
            sleep, 500
            if (ImageSearchAndClick("chair_mint.bmp", 28, 230, 713, 791))
            {
                sleep, 500
                ImageSearchAndClick("next.bmp", 880, 805, 969, 847)
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