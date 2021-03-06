program projectile
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, r, d

  ! Leer valores para el ángulo a, y la velocidad inicial u desde la terminal
  write(*,*) 'Dame el ángulo y la rapidez inicial'
  read(*,*) a, r

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0

  ! Ecuación de distancia recorrida
  d = ((r * r) * (sin(2 * a))) / g

  ! Resultado en la pantalla
  write(*,*) 'La distancia que recorrió el proyectil es de', d

end program projectile
