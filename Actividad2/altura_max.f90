program projectile
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, r, h

  ! Leer valores para el ángulo a, y la velocidad inicial u desde la terminal
  write(*,*) 'Dame el ángulo y la rapidez inicial'
  read(*,*) a, r

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0

  ! Ecuación de altura máxima
  h = (r * r * sin(a) * sin(a)) /( 2 * g)

  ! Resultado en la pantalla
  write(*,*) 'La altura máxima es de', h

end program projectile
