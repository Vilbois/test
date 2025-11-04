#include <unistd.h>

void ft_putchar (char c)
{
	write( 1, &c, 1);
}
void ft_putupper (char d)
{
	if(d >= 'a' && d <= 'z')
	d = d - 32;
	ft_putchar(d);
}

int main (void)

{
    ft_putchar ('c');
    ft_putchar ('v');
    ft_putchar ('\n');
    return (0);
}

