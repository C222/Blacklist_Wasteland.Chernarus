_radius = _this select 0;

x = (random (_radius *2)) - _radius;
y = sqrt((_radius ^ 2) - (x ^ 2));
y = (random (y *2)) - y;

[x, y]