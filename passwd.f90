program password
    implicit none

    integer :: i, j, k
    character (len = 2) :: q,w,e,r,t,y,u,ii,o,p,a,s,d,f,g,h,jj,kk,l,z,x,c,v,b,n,m
    character (len = 2) :: qm,wm,em,rm,tm,ym,um,iim,om,pm,am,sm,dm,fm,gm,hm,jjm,kkm,lm,zm,xm,cm,vm,bm,nm,mm
    character (len = 20):: uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, cero 
    character (len = 30) :: usuario 
    character (len = 25) :: servicio
    character, allocatable :: contrasena(:)
    character :: abecedario(78) 
    character (len = 40) :: archivo_guardado
    character (len = 4) :: archivo
    real(8) :: random
    integer :: indice, orden

    abecedario(1) = 'a' 
    abecedario(2) = 'b'  
    abecedario(3) = 'c'
    abecedario(4) = 'd' 
    abecedario(5) = 'e' 
    abecedario(6) = 'f' 
    abecedario(7) = 'g' 
    abecedario(8) = 'h' 
    abecedario(9) = 'i' 
    abecedario(10) = 'j' 
    abecedario(11) = 'k'
    abecedario(12) = 'l' 
    abecedario(13) = 'm' 
    abecedario(14) = 'n' 
    abecedario(15) = 'o' 
    abecedario(16) = 'p' 
    abecedario(17) = 'q' 
    abecedario(18) = 'r' 
    abecedario(19) = 's' 
    abecedario(20) = 't' 
    abecedario(21) = 'u' 
    abecedario(22) = 'v'
    abecedario(23) = 'w' 
    abecedario(24) = 'x' 
    abecedario(25) = 'y'
    abecedario(26) = 'z' 
    abecedario(27) = '1'  
    abecedario(28) = '2'  
    abecedario(29) = '3' 
    abecedario(30) = '4'
    abecedario(31) = '5'
    abecedario(32) = '6' 
    abecedario(33) = '7' 
    abecedario(34) = '8' 
    abecedario(35) = '9' 
    abecedario(36) = '0' 
    abecedario(37) = '1'  
    abecedario(38) = '2'  
    abecedario(39) = '3' 
    abecedario(40) = '4'
    abecedario(41) = '5'
    abecedario(42) = '6' 
    abecedario(43) = '7' 
    abecedario(44) = '8' 
    abecedario(45) = '9' 
    abecedario(46) = '0'
    abecedario(47) = 'A' 
    abecedario(48) = 'B'  
    abecedario(49) = 'C'
    abecedario(50) = 'D' 
    abecedario(51) = 'E' 
    abecedario(52) = 'F' 
    abecedario(53) = 'G' 
    abecedario(54) = 'H' 
    abecedario(55) = 'I' 
    abecedario(56) = 'J' 
    abecedario(57) = 'K'
    abecedario(58) = 'L' 
    abecedario(59) = 'M' 
    abecedario(60) = 'N' 
    abecedario(61) = 'O' 
    abecedario(62) = 'P' 
    abecedario(63) = 'Q' 
    abecedario(64) = 'R' 
    abecedario(65) = 'S' 
    abecedario(66) = 'T' 
    abecedario(67) = 'U' 
    abecedario(68) = 'V'
    abecedario(69) = 'W' 
    abecedario(70) = 'X' 
    abecedario(71) = 'Y'
    abecedario(72) = 'Z' 
    abecedario(73) = '!' 
    abecedario(74) = '@' 
    abecedario(75) = '#' 
    abecedario(76) = '$' 
    abecedario(77) = '%' 
    abecedario(78) = '&' 

    
    write(*,*) 'Nombre del servicio (sin espacios):'
    read(*,*) servicio

    write(*,*) 'Nombre de usuario (sin espacios):'
    read(*,*) usuario
    
    write(*,*) 'Tamano de la contrasena (numero):'
    read(*,*) orden 
    
    allocate(contrasena(orden))

    do i = 1, orden
        call random_number(random)
        indice = 1 + floor(77*random); 

        contrasena(i) = abecedario(indice)

    enddo 

    write(*,*) 'La contrasena es: ', contrasena 

    archivo = '.txt'
    archivo_guardado = servicio//archivo
    print*, archivo_guardado

    open(1, file = archivo_guardado)
    write(1,*) 'Servicio: ', servicio
    write(1,*) 'Nombre de usuario: ', usuario
    write(1,*) 'Contraseña: ', contrasena

    write(*,*) 'Presiona ENTER para salir'
    read(*,*)
    
end program password

  