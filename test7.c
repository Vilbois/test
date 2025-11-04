#include <unistd.h>

void ft_putchar(char c)
{
    write (1, &c, 1);
}

void ft_toupper(char c)
{
    if(c >= 'a' && c <= 'z')
    c = c - 32;
    ft_putchar(c);
}

int main(void)
{
    char buf[100];
    int  len;
    int  i;

    write(1, "Entre ton texte : ", 18);
    len = read(0, buf, 100);
    write(1, "En majuscules : ", 16);
    i = 0;
    while (i < len)
    {
        if (buf[i] != '\n')
	ft_toupper(buf[i]);
	i++;
    }
    ft_putchar('\n');
    return (0);
}    
