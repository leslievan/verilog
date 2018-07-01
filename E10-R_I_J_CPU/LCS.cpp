#include <stdio.h>
#include <string.h>
#define MAXLEN 50

void LCSLength(char *x, char *y, int m, int n, int c[][MAXLEN], int b[][MAXLEN])
{
    int i, j;

    for(i = 0; i <= m; i++)
        c[i][0] = 0;
    for(j = 1; j <= n; j++)
        c[0][j] = 0;
    for(i = 1; i<= m; i++)
    {
        for(j = 1; j <= n; j++)
        {
            if(x[i-1] == y[j-1])
            {
                c[i][j] = c[i-1][j-1] + 1;
                b[i][j] = 1;                    //如果使用'↖'、'↑'、'←'字符，会有警告，也能正确执行。
            }                                   //本算法采用1,3,2三个整形作为标记
            else if(c[i-1][j] >= c[i][j-1])
            {
                c[i][j] = c[i-1][j];
                b[i][j] = 3;
            }
            else
            {
                c[i][j] = c[i][j-1];
                b[i][j] = 2;
            }
        }
    }
}

void PrintLCS(int b[][MAXLEN], char *x, int i, int j)
{
    if(i == 0 || j == 0)
        return;
    if(b[i][j] == 1)
    {
        PrintLCS(b, x, i-1, j-1);
        printf("%c ", x[i-1]);
    }
    else if(b[i][j] == 3)
        PrintLCS(b, x, i-1, j);
    else
        PrintLCS(b, x, i, j-1);
}

int main()
{
    char x[MAXLEN] = {"ABCBDAB"};
    char y[MAXLEN] = {"BDCABA"};

    int  b[MAXLEN][MAXLEN];                        //传递二维数组必须知道列数，所以使用MAXLEN这个确定的数
    int  c[MAXLEN][MAXLEN];

    int m, n;

    m = strlen(x);
    n = strlen(y);

    LCSLength(x, y, m, n, c, b);
    PrintLCS(b, x, m, n);

    return 0;
}