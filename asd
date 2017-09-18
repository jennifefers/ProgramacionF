program vector
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: x, y, v, a, ti, tf, d

  real :: v()
  real :: x
  integer :: i,k

  ! Leer valores
  write(*,*) 'Para calcular (xi,yi) del proyectil dame la rapidez inicial, el ángulo,   el tiempo inicial, el tiempo final y el incremento de tiempo'
  
  read(*,*) v, a, ti, tf, d

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0

  do i=ti,tf,d

  x = v * t(i) * cos(a)
  y = (v * t(i) * sin(a)) - (0.5 * g * (t(i) * t(i)))

  end do

  ! Resultado en la pantalla
  write(*,*) 

end program projectile
