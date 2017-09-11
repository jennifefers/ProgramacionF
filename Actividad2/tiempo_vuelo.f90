program projectile
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, r, t

  ! Leer valores para el ángulo a, y la velocidad inicial u desde la terminal
  write(*,*) 'Dame el ángulo y la rapidez inicial'
  read(*,*) a, r

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0

  ! Ecuación del tiempo de vuelo
  t = (2 * r * sin(a)) / g

  ! Resultado en la pantalla
  write(*,*) 'El tiempo de vuelo del proyectil es de', t

end program projectile
