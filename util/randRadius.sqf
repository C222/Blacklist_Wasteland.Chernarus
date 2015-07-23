radius = _this select 0;

x = (random (radius *2)) - radius;
y = sqrt((radius ^ 2) - (x ^ 2));
y = (random (y *2)) - y;

[x, y]