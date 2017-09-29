
program vectores
  implicit none

  real, dimension(101) :: x, y
  integer :: i, npts=100, j
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927
  real :: r, theta, deltat, t, x0, y0

  open(1, file='data1.dat', status='replace')

  write(*,*) 'Dame la rapidez inicial'
  read(*,*) r
  
  do j=15,90,15
  
 
  theta = (float(j) * pi )/ 180
 
  
  ! setup x and y with some data
  deltat = 0.05
  x0=0.0
  y0=0.0

  write(1,*) x0, y0

  do i=1,npts
  t = float(i) * deltat
     x(i) = r * cos (theta) * t
     y(i) = r * sin (theta) * t - 0.5 * g * t * t
  write(1,*) x(i), y(i)
  if (y(i)<0) exit 
  end do
  
  end do
  close(1)

end program vectores
