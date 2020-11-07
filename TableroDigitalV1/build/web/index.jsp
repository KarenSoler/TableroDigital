<%-- 
    Document   : index
    Created on : 31/10/2020, 3:27:32 p. m.
    Author     : nian
--%>

<%@page import="com.sun.jdi.connect.spi.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> <!--bootstarp-->
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>

        <!----------------------heaher logo tablero, nombre e imagen del estudiante----------------------------->  

        <div class="container">
            <div class="row header1">
                <div class="col-sm-6 col-md-6">
                    <img src="imagenes/dibujo.svg" alt="" class="img-responsive imgTam">
                </div>
                <div class="col-sm-6 col-md-6">
                    <div class="col-xs-8 col-sm-7 col-md-8 col-lg-9 usuario2">
                        <p class="nomAlum">Nombre Del Alumno</p>
                    </div>
                    <div class="col-xs-4 col-sm-5 col-md-4 col-lg-3 usuario">
                        <img src="imagenes/5955C283-BED6-457B-985E-4EDB1F31A1A0.png" alt="Foto" class="img-responsive img-circle imgTam2">
                    </div>
                </div>            
            </div>
        </div>

        <!----------------------franja roja con nombre del colegio-----------------------------> 

        <div class="container btn-red">
            <p>FERNADO SOTO APARICIO(IED)</p>
        </div>

        <!----------------------aside , section-----------------------------> 

        <div class="container">
            <section class="row">                

                <!----------------------aside datos del usuario-----------------------------> 

                <aside class="col-xs-12 col-sm-4 col-md-3 datosUsuario">
                    <div class="datosUsuario">
                        <div class="">
                            <div class="imgDatos">
                                <img src="imagenes/5955C283-BED6-457B-985E-4EDB1F31A1A0.png" alt="" class="img-responsive img-circle imgTam2 imgDatos">                            
                            </div>                        
                        </div>
                        <div class="">
                            <div class="col-xs-5 col-sm-5 col-md-5 col1">
                                <p>Nombres</p>
                                <p>Apellidos</p>
                                <p>Documento</p>
                                <p>Correo</p>
                                <p>Direccion</p>
                                <p>Telefono</p>
                                <p>Celular</p>
                            </div>
                            <div class="col-xs-7 col-sm-7 col-md-7 col2">
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                                <p>Lorem, ipsum.</p>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <button class="btn btn-block btn-red">Boton 1</button>
                        <button class="btn btn-block btn-red">Boton 2</button>
                        <button class="btn btn-block btn-red">Boton 3</button>
                    </div>
                </aside>

                <!----------------------section datos instrucciones-----------------------------> 

                <articule class="col-xs-12 col-sm-8 col-md-9">
                    <p>
                    <h3>Form registro</h3>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Odio, maxime! Ipsum, deserunt? In placeat nihil ratione ipsa libero officia iure quos explicabo! Earum delectus hic praesentium nostrum nam debitis minima.
                    </p> 
                    <!--img src="./imagenes/fotoPerfil.jpg" alt="No hay nada"/-->
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Edad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                               
                            %>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>                            
                        </tbody>
                    </table>

                    <!-----------------------------formulario de registro------------------------------------->

                    <div class="">
                        <div class="row">
                            <div class="col-sm">
                                <form action="index.jsp" method="post">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese sus nombres">
                                    </div>
                                    <div class="form-group">
                                        <label for="edad">Edad</label>
                                        <input type="text" class="form-control" id="edad" name="edad" placeholder="Ingrese sus edad">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Enviar</button>
                                </form>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm">
                                <div class="alert alert-primary" role="alert">
                                    <%
                                        String nombre = request.getParameter("nombre");
                                        String edad = request.getParameter("edad");
                                        if (nombre == "" && edad == "") {
                                            out.print("Debes ingresar los datos requeridos");
                                        } else {
                                            String mensaje = "hola mi nombre es " + nombre + " y mi edad es " + edad + " años";
                                            out.print(mensaje);
                                        }
                                    %>
                                </div>

                            </div>
                        </div>
                    </div>

                </articule>
            </section>
        </div>

        <!----------------------footer----------------------------->                          

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                        <p>Lorem ipsum dolor sit amet.</p>
                    </div>
                    <div class="col-xs-12 col-md-4">
                        <p>Lorem ipsum dolor sit amet.</p>
                    </div>
                    <div class="col-xs-12 col-md-4">
                        <p>Lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
        </footer>  
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </body>
</html>
